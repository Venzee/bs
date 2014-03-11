package net.venz.business.pos.entity;

import java.io.Serializable;

/**
 * 项目消费明细记录
 * 数据库表名：pos_consume_detail
 * 
 * @author Venz
 *
 */
public class ConsumeDetail implements Serializable {

	private static final long serialVersionUID = -8473839949916250680L;
	private int id;
	private int parentId; // 父级ID
	private int itemId; // 项目ID
	private String itemCode; // 项目编号
	private String itemName; // 项目名称
	private double itemFee; // 项目金额
	private double consumeFee; // 消费金额
	private double achiFee; // 项目业绩
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

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public double getItemFee() {
		return itemFee;
	}

	public void setItemFee(double itemFee) {
		this.itemFee = itemFee;
	}

	public double getConsumeFee() {
		return consumeFee;
	}

	public void setConsumeFee(double consumeFee) {
		this.consumeFee = consumeFee;
	}

	public double getAchiFee() {
		return achiFee;
	}

	public void setAchiFee(double achiFee) {
		this.achiFee = achiFee;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

}
