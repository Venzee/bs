package net.venz.business.base.entity;

import java.io.Serializable;

/**
 * 卡类型 
 * 数据库表名：base_card_type
 * 
 * @author Venz
 * 
 */
public class CardType implements Serializable {

	private static final long serialVersionUID = 1651587177671144921L;
	private int id; // ID
	private String name; // 名称
	private int status; // 状态
	private double consumeDiscount; // 消费折扣
	private double goodsDiscount; // 商品折扣
	private int feeFlag; // 卡费用标识 0普通储值卡,1疗程计次卡
	private int smsFlag; // 是否发送短信
	private int smsCostFlag; // 是否扣除信息费
	private double preCardFee; // 预充值卡金
	private double prePresentFee; // 预充值赠送金
	private double preTreatFee; // 预充值疗程卡金
	private double preTreatPresentFee; // 预充值疗程赠送金
	private double costFee; // 工本费
	private int shopId; // 所属商家ID
	private String remark; // 备注
	private String revokeTime; // 删除时间

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public double getConsumeDiscount() {
		return consumeDiscount;
	}

	public void setConsumeDiscount(double consumeDiscount) {
		this.consumeDiscount = consumeDiscount;
	}

	public double getGoodsDiscount() {
		return goodsDiscount;
	}

	public void setGoodsDiscount(double goodsDiscount) {
		this.goodsDiscount = goodsDiscount;
	}

	public int getFeeFlag() {
		return feeFlag;
	}

	public void setFeeFlag(int feeFlag) {
		this.feeFlag = feeFlag;
	}

	public int getSmsFlag() {
		return smsFlag;
	}

	public void setSmsFlag(int smsFlag) {
		this.smsFlag = smsFlag;
	}

	public int getSmsCostFlag() {
		return smsCostFlag;
	}

	public void setSmsCostFlag(int smsCostFlag) {
		this.smsCostFlag = smsCostFlag;
	}

	public double getPreCardFee() {
		return preCardFee;
	}

	public void setPreCardFee(double preCardFee) {
		this.preCardFee = preCardFee;
	}

	public double getPrePresentFee() {
		return prePresentFee;
	}

	public void setPrePresentFee(double prePresentFee) {
		this.prePresentFee = prePresentFee;
	}

	public double getPreTreatFee() {
		return preTreatFee;
	}

	public void setPreTreatFee(double preTreatFee) {
		this.preTreatFee = preTreatFee;
	}

	public double getPreTreatPresentFee() {
		return preTreatPresentFee;
	}

	public void setPreTreatPresentFee(double preTreatPresentFee) {
		this.preTreatPresentFee = preTreatPresentFee;
	}

	public double getCostFee() {
		return costFee;
	}

	public void setCostFee(double costFee) {
		this.costFee = costFee;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRevokeTime() {
		return revokeTime;
	}

	public void setRevokeTime(String revokeTime) {
		this.revokeTime = revokeTime;
	}

}
