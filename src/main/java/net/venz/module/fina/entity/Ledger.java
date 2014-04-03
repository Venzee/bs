package net.venz.module.fina.entity;

import java.io.Serializable;

/**
 * 财务流水账 
 * 数据库表名：fina_ledger
 * 
 * @author Venz
 * 
 */
public class Ledger implements Serializable {

	private static final long serialVersionUID = 7210207772266583358L;
	private int id; // ID
	private double cashPay; // 现金支付
	private double cardPay; // 卡金支付
	private double unionPay; // 银联支付
	private double presentPay; // 赠送金支付
	private double vouchersPay; // 代金卷支付
	private double pointPay; // 积分支付
	private int joinId; // 记录ID
	private int type; // 流水账类型
	private int shopId; // 所属商户ID

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getCashPay() {
		return cashPay;
	}

	public void setCashPay(double cashPay) {
		this.cashPay = cashPay;
	}

	public double getCardPay() {
		return cardPay;
	}

	public void setCardPay(double cardPay) {
		this.cardPay = cardPay;
	}

	public double getUnionPay() {
		return unionPay;
	}

	public void setUnionPay(double unionPay) {
		this.unionPay = unionPay;
	}

	public double getPresentPay() {
		return presentPay;
	}

	public void setPresentPay(double presentPay) {
		this.presentPay = presentPay;
	}

	public double getVouchersPay() {
		return vouchersPay;
	}

	public void setVouchersPay(double vouchersPay) {
		this.vouchersPay = vouchersPay;
	}

	public double getPointPay() {
		return pointPay;
	}

	public void setPointPay(double pointPay) {
		this.pointPay = pointPay;
	}

	public int getJoinId() {
		return joinId;
	}

	public void setJoinId(int joinId) {
		this.joinId = joinId;
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
