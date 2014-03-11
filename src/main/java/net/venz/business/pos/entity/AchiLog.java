package net.venz.business.pos.entity;

import java.io.Serializable;

/**
 * 业绩记录
 * 数据库表名：pos_achi_log
 * 
 * @author Venz
 *
 */
public class AchiLog implements Serializable {

	private static final long serialVersionUID = 9186437882086044165L;
	private int id;
	private int parentId; // 父级ID
	private int detailId; // 明细ID
	private int employeeId; // 员工ID
	private double achiFee; // 业绩
	private int type; // 业绩类型 0充值业绩，1项目业绩，2卖品业绩，3疗程购买业绩
	private int shopId; // 商户ID

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getDetailId() {
		return detailId;
	}

	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public double getAchiFee() {
		return achiFee;
	}

	public void setAchiFee(double achiFee) {
		this.achiFee = achiFee;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

}
