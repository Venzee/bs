package net.venz.module.base.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.venz.core.base.entity.Page;
import net.venz.core.util.DataUtil;
import net.venz.module.base.dao.MemberCardDao;
import net.venz.module.base.dao.MemberDao;
import net.venz.module.base.entity.Member;
import net.venz.module.base.entity.MemberCard;
import net.venz.module.base.entity.MemberForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private MemberCardDao memberCardDao;

	public int addMember(Member member, MemberCard memberCard) {
		// 检查手机号码是否存在
		boolean m_ok = memberDao.checkMobileExist(member.getMobile(), member.getShopId());
		if(m_ok){
			return -1;
		}
		// 检查卡类型卡号是否重复
		boolean c_ok = memberCardDao.checkCardNoExist(memberCard.getCardNo(), memberCard.getCardTypeId(), memberCard.getShopId());
		if(c_ok){
			return -2;
		}
		
		// 检查完毕无异常，新增会员和会员卡
		member.setJoinDate(DataUtil.getCurrDateTimeStr());
		member.setBirth("1900-01-01");
		int id = memberDao.addMember(DataUtil.parseObjectToMap(member, Member.class));
		if (id != 0) {
			memberCard.setMemberId(id);
			memberCard.setOpenDate(DataUtil.getCurrDateTimeStr());
			if (DataUtil.isEmptyStr(memberCard.getExpireDate())) {
				memberCard.setExpireDate(null);
			}
			memberCardDao.addMemberCard(DataUtil.parseObjectToMap(memberCard, MemberCard.class));
			return 0;
		}
		return -1;
	}

	public int countMemberList(MemberForm form) {
		Map<String, Object> data = new HashMap<String, Object>();
		if(!DataUtil.isEmptyStr(form.getW())){
			data.put("keyword", form.getW());
		}
		int count = memberDao.countMemberList(data);
		return count;
	}
	
	public List<MemberForm> getMemberListPage(MemberForm form, Page page) {
		Map<String, Object> data = new HashMap<String, Object>();
		List<MemberForm> memberList = new ArrayList<MemberForm>();
		
		if(!DataUtil.isEmptyStr(form.getW())){
			data.put("keyword", form.getW());
		}
		List<Map<String, Object>> dataList = memberDao.getMemberListPage(data, page);
		
		for (Map<String, Object> map : dataList) {
			MemberForm memberForm = new MemberForm();
			List<MemberCard> memberCards = new ArrayList<MemberCard>();
			Member member = (Member) DataUtil.parseMapToObject(map, Member.class);
			
			List<Map<String, Object>> cList = memberCardDao.getMemberCardList(member.getId());
			for (Map<String, Object> cmap : cList) {
				MemberCard memberCard = (MemberCard) DataUtil.parseMapToObject(cmap, MemberCard.class);
				memberCards.add(memberCard);
			}
			
			memberForm.setM(member);
			memberForm.setMc_list(memberCards);
			memberList.add(memberForm);
		}
		return memberList;
	}

}
