package net.venz.business.base.dao;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import net.venz.core.base.dao.BaseDao;

import org.springframework.stereotype.Repository;

@Repository
public class MemberCardDao extends BaseDao {

	public void addMemberCard(Map<String, Object> data) {
		try {
			this.insertToTable("base_member_card", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Map<String, Object>> getMemberCardList(Object memberId) {
		String sql = "select * from base_member_card where memberid = ?";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql, Arrays.asList(memberId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}
}
