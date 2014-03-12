package net.venz.business.base.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.venz.business.base.MemberForm;
import net.venz.business.base.dao.MemberCardDao;
import net.venz.business.base.dao.MemberDao;
import net.venz.business.base.entity.Member;
import net.venz.business.base.entity.MemberCard;
import net.venz.core.util.DataUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private MemberCardDao memberCardDao;

	public void addMember(Member member, MemberCard memberCard) {
		member.setJoinDate(DataUtil.getCurrDateTimeStr());
		int id = memberDao.addMember(DataUtil.parseObjectToMap(member, Member.class));
		if (id != 0) {
			memberCard.setMemberId(id);
			memberCard.setOpenDate(DataUtil.getCurrDateTimeStr());
			if (DataUtil.isEmptyStr(memberCard.getExpireDate())) {
				memberCard.setExpireDate(null);
			}
			memberCardDao.addMemberCard(DataUtil.parseObjectToMap(memberCard, MemberCard.class));
		}
	}

	public List<MemberForm> getMemberListPage(MemberForm form) {
		List<MemberForm> memberList = new ArrayList<MemberForm>();
		List<Map<String, Object>> adataList = memberDao.getMemberListPage();
		for (Map<String, Object> amap : adataList) {
			MemberForm memberForm = new MemberForm();
			List<MemberCard> memberCards = new ArrayList<MemberCard>();
			
			Member member = (Member) DataUtil.parseMapToObject(amap, Member.class);
			
			// 查询会员所持有的会员卡
			List<Map<String, Object>> bdataList = memberCardDao.getMemberCardList(member.getId());
			for (Map<String, Object> bmap : bdataList) {
				MemberCard memberCard = (MemberCard) DataUtil.parseMapToObject(bmap, MemberCard.class);
				memberCards.add(memberCard);
			}
			
			memberForm.setMember(member);
			memberForm.setMemberCards(memberCards);
			memberList.add(memberForm);
		}
		return memberList;
	}

}
