package net.venz.module.base.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import net.venz.core.base.dao.BaseDao;

import org.springframework.stereotype.Repository;

@Repository
public class MemberCardDao extends BaseDao {

	/**
	 * 检查卡类型卡号是否重复
	 * 
	 * @param cardNo
	 * @param cardTypeId
	 * @param shopId
	 * @return
	 */
	public boolean checkCardNoExist(String cardNo, int cardTypeId, int shopId) {
		String sql = "select count(id) from base_member_card where shopid = ? and cardtypeid = ? and cardno = ?";
		List<Object> params = new ArrayList<Object>();
		params.add(shopId);
		params.add(cardTypeId);
		params.add(cardNo);
		try {
			Map<String, Object> data = this.executeQuerySingle(sql, params);
			int count = (Integer) data.get("count");
			if(count > 0){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	/**
	 * 新增会员卡
	 * 
	 * @param data
	 */
	public void addMemberCard(Map<String, Object> data) {
		try {
			this.insertToTable("base_member_card", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取会员拥有的会员卡
	 * 
	 * @param memberId
	 * @return
	 */
	public List<Map<String, Object>> getMemberCardList(Object memberId) {
		String sql = "select id,cardno,cardtypeid,consumediscount,goodsdiscount,"
				+ "cardfee,presentfee,treatfee,treatpresentfee from base_member_card where memberid = ?";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql, Arrays.asList(memberId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}
}
