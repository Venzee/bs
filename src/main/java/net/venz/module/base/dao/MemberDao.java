package net.venz.module.base.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.venz.core.base.dao.BaseDao;
import net.venz.core.base.entity.Page;
import net.venz.core.util.DataUtil;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao extends BaseDao {

	/**
	 * 检查手机号码是否重复
	 * 
	 * @param mobile
	 * @param shopId
	 * @return
	 */
	public boolean checkMobileExist(String mobile, int shopId) {
		String sql = "select count(id) count from base_member where shopid = ? and mobile = ?";
		List<Object> params = new ArrayList<Object>();
		params.add(shopId);
		params.add(mobile);
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
	
	public int addMember(Map<String, Object> data) {
		int id = 0;
		try {
			id = this.insertAndReturnPrimaryId("base_member", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public int countMemberList(Map<String, Object> data) {
		StringBuffer sqlBuffer = new StringBuffer("select count(distinct a.id) count from base_member a left join base_member_card b on b.memberid = a.id where 1=1 ");
		List<Object> params = new ArrayList<Object>();
		this.buildSQL(sqlBuffer, data, params);
		int count = 0;
		try {
			Map<String, Object> map = this.executeQuerySingle(sqlBuffer.toString(), params);
			if(DataUtil.isNum(map.get("count").toString())) {
				count = Integer.valueOf(map.get("count").toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public List<Map<String, Object>> getMemberListPage(Map<String, Object> data, Page page) {
		StringBuffer sqlBuffer = new StringBuffer("select distinct a.id,a.name,a.sex,a.mobile,a.joindate,a.lastconsumedate from base_member a left join base_member_card b on b.memberid = a.id where 1=1 ");
		List<Object> params = new ArrayList<Object>();
		this.buildSQL(sqlBuffer, data, params);
		sqlBuffer.append("order by a.joindate desc limit ?,?");
		params.add(page.getSr());
		params.add(page.getPr());
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sqlBuffer.toString(), params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}
	
	private void buildSQL(StringBuffer sqlBuffer, Map<String, Object> data, List<Object> params) {
		if(data.containsKey("keyword")){
			sqlBuffer.append("and (a.name like ? or a.mobile like ? or b.cardno like ?) ");
			params.add("%" + data.get("keyword") + "%");
			params.add("%" + data.get("keyword") + "%");
			params.add("%" + data.get("keyword") + "%");
		}else{
			if(data.containsKey("")){
				
			}
		}
	}
}
