package net.venz.business.pos.entity;

import java.io.Serializable;

/**
 * 项目消费记录
 * 数据库表名：pos_consume_log
 * 
 * @author Venz
 *
 */
public class ConsumeLog implements Serializable {

	private static final long serialVersionUID = -8881367718879148788L;
	private int id;
	private String billNo; // 单号
	private String billDate; // 单据日期
	private double accountFee; // 入账金额
	private double sumFee; // 总金额
	private int crossFlag; // 跨店标示 0正常，1跨店
	private int freeFlag; // 免单标示 0正常，1免单
	private int operatorId; // 操作人ID
	private int customNum; // 客数
	private int customFrom; // 客人来源 0正常，1内创，2外创

	private int memberId; // 会员ID
	private int cardId; // 会员卡ID
	private int cardTypeId; // 卡类型ID
	private int serialId; // 流水账ID

	private String revokeTime; // 销单时间
	private String remark; // 备注

	private int status; // 状态 0正常，1未审查，2已审查，3-8预留，9销单 默认0
	private int shopId; // 商户ID
	private String submitTime; // 录单时间

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBillNo() {
		return billNo;
	}

	public void setBillNo(String billNo) {
		this.billNo = billNo;
	}

	public String getBillDate() {
		return billDate;
	}

	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}

	public double getAccountFee() {
		return accountFee;
	}

	public void setAccountFee(double accountFee) {
		this.accountFee = accountFee;
	}

	public double getSumFee() {
		return sumFee;
	}

	public void setSumFee(double sumFee) {
		this.sumFee = sumFee;
	}

	public int getCrossFlag() {
		return crossFlag;
	}

	public void setCrossFlag(int crossFlag) {
		this.crossFlag = crossFlag;
	}

	public int getFreeFlag() {
		return freeFlag;
	}

	public void setFreeFlag(int freeFlag) {
		this.freeFlag = freeFlag;
	}

	public int getOperatorId() {
		return operatorId;
	}

	public void setOperatorId(int operatorId) {
		this.operatorId = operatorId;
	}

	public int getCustomNum() {
		return customNum;
	}

	public void setCustomNum(int customNum) {
		this.customNum = customNum;
	}

	public int getCustomFrom() {
		return customFrom;
	}

	public void setCustomFrom(int customFrom) {
		this.customFrom = customFrom;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public int getCardTypeId() {
		return cardTypeId;
	}

	public void setCardTypeId(int cardTypeId) {
		this.cardTypeId = cardTypeId;
	}

	public int getSerialId() {
		return serialId;
	}

	public void setSerialId(int serialId) {
		this.serialId = serialId;
	}

	public String getRevokeTime() {
		return revokeTime;
	}

	public void setRevokeTime(String revokeTime) {
		this.revokeTime = revokeTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}

}
