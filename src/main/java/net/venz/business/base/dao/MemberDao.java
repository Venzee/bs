package net.venz.business.base.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import net.venz.core.base.dao.BaseDao;

@Repository
public class MemberDao extends BaseDao {

	public int addMember(Map<String, Object> data) {
		int id = 0;
		try {
			id = this.insertAndReturnPrimaryId("base_member", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public List<Map<String, Object>> getMemberListPage() {
		String sql = "select * from base_member order by joindate desc";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}
}
