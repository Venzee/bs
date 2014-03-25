package net.venz.business.base.entity;

import java.io.Serializable;

/**
 * 会员卡 
 * 数据库表名：base_member_card
 * 
 * @author Venz
 * 
 */
public class MemberCard implements Serializable {

	private static final long serialVersionUID = 5130316007429278196L;
	private int id; // ID
	private int memberId; // 所属会员ID
	private String cardNo; // 卡号
	private int cardTypeId; // 卡类型ID
	private double cardFee; // 卡余额
	private double sumCardFee; // 卡储值总额
	private double presentFee; // 赠送余额
	private double sumPresentFee; // 赠送总额
	private double treatFee; // 疗程余额
	private double treatPresentFee; // 疗程赠送余额
	private double consumeDiscount; // 消费折扣
	private double goodsDiscount; // 卖品折扣
	private int shopId; // 所属商家ID
	private String openDate; // 开卡日期
	private int openEmployeeId; // 开卡员工ID
	private int smsFlag; // 是否发送短信
	private int smsCostFlag; // 是否扣除短信费用
	private String expireDate; // 失效日期
	private String revokeTime; // 删除时间

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public int getCardTypeId() {
		return cardTypeId;
	}

	public void setCardTypeId(int cardTypeId) {
		this.cardTypeId = cardTypeId;
	}

	public double getCardFee() {
		return cardFee;
	}

	public void setCardFee(double cardFee) {
		this.cardFee = cardFee;
	}

	public double getSumCardFee() {
		return sumCardFee;
	}

	public void setSumCardFee(double sumCardFee) {
		this.sumCardFee = sumCardFee;
	}

	public double getPresentFee() {
		return presentFee;
	}

	public void setPresentFee(double presentFee) {
		this.presentFee = presentFee;
	}

	public double getSumPresentFee() {
		return sumPresentFee;
	}

	public void setSumPresentFee(double sumPresentFee) {
		this.sumPresentFee = sumPresentFee;
	}

	public double getTreatFee() {
		return treatFee;
	}

	public void setTreatFee(double treatFee) {
		this.treatFee = treatFee;
	}

	public double getTreatPresentFee() {
		return treatPresentFee;
	}

	public void setTreatPresentFee(double treatPresentFee) {
		this.treatPresentFee = treatPresentFee;
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

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public int getOpenEmployeeId() {
		return openEmployeeId;
	}

	public void setOpenEmployeeId(int openEmployeeId) {
		this.openEmployeeId = openEmployeeId;
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

	public String getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}

	public String getRevokeTime() {
		return revokeTime;
	}

	public void setRevokeTime(String revokeTime) {
		this.revokeTime = revokeTime;
	}

}
