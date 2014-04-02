package net.venz.business.base.dao;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import net.venz.core.base.dao.BaseDao;

import org.springframework.stereotype.Repository;

@Repository
public class MemberCardDao extends BaseDao {

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
