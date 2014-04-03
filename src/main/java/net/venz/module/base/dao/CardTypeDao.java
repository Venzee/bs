package net.venz.module.base.dao;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import net.venz.core.base.dao.BaseDao;

@Repository
public class CardTypeDao extends BaseDao {

	/**
	 * 新增卡类型
	 * 
	 * @param data
	 */
	public void addCardType(Map<String, Object> data) {
		try {
			this.insertToTable("base_card_type", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取商户所有卡类型
	 * 
	 * @param shopId 连锁需用总部ID查询
	 * @return
	 */
	public List<Map<String, Object>> getCardTypeAll(Object shopId) {
		String sql = "select id,name,status,consumediscount,goodsdiscount,feeflag,smsflag,"
				+ "smscostflag,precardfee,prepresentfee,pretreatfee,pretreatpresentfee,costfee,"
				+ "shopid,remarkrevoketime from base_card_type where shopid = ?";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql, Arrays.asList(shopId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}

	/**
	 * 获取可开卡卡类型
	 * 
	 * @param shopId 连锁需用总部ID查询
	 * @return
	 */
	public List<Map<String, Object>> getCardType4OpenCard(Object shopId) {
		String sql = "select id,name,consumediscount,goodsdiscount,feeflag,smsflag,"
				+ "smscostflag,precardfee,prepresentfee,pretreatfee,pretreatpresentfee,"
				+ "costfee,shopid from base_card_type where shopid = ? and status = 0";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql, Arrays.asList(shopId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}

	/**
	 * 获取卡类型查询用
	 * 
	 * @param shopId 连锁需用总部ID查询
	 * @return
	 */
	public List<Map<String, Object>> getCardType4Select(Object shopId) {
		String sql = "select id,name,status,shopid from base_card_type where shopid = ?";
		List<Map<String, Object>> dataList = null;
		try {
			dataList = this.executeQueryMultiple(sql, Arrays.asList(shopId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dataList;
	}
	
}
