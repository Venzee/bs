package net.venz.business.base.entity;

import java.io.Serializable;

/**
 * 会员 数据库表名：base_member
 * 
 * @author Venz
 * 
 */
public class Member implements Serializable {

	private static final long serialVersionUID = -2843351692584381924L;
	private int id; // ID
	private String name; // 姓名
	private int sex; // 性别
	private int status; // 状态
	private int shopId; // 所属商户ID
	private String mobile; // 手机
	private String birth; // 生日
	private String joinDate; // 注册时间
	private double point; // 积分
	private double sumConsumePoint; // 已消费积分
	private int consumeTimes; // 消费次数
	private double sumConsumeFee; // 总消费金额
	private double sumDebtFee; // 总欠款
	private int introMemberId; // 介绍会员ID
	private String password; // 密码
	private String lastConsumeDate; // 最后消费时间
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

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
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

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public double getPoint() {
		return point;
	}

	public void setPoint(double point) {
		this.point = point;
	}

	public double getSumConsumePoint() {
		return sumConsumePoint;
	}

	public void setSumConsumePoint(double sumConsumePoint) {
		this.sumConsumePoint = sumConsumePoint;
	}

	public int getConsumeTimes() {
		return consumeTimes;
	}

	public void setConsumeTimes(int consumeTimes) {
		this.consumeTimes = consumeTimes;
	}

	public double getSumConsumeFee() {
		return sumConsumeFee;
	}

	public void setSumConsumeFee(double sumConsumeFee) {
		this.sumConsumeFee = sumConsumeFee;
	}

	public double getSumDebtFee() {
		return sumDebtFee;
	}

	public void setSumDebtFee(double sumDebtFee) {
		this.sumDebtFee = sumDebtFee;
	}

	public int getIntroMemberId() {
		return introMemberId;
	}

	public void setIntroMemberId(int introMemberId) {
		this.introMemberId = introMemberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastConsumeDate() {
		return lastConsumeDate;
	}

	public void setLastConsumeDate(String lastConsumeDate) {
		this.lastConsumeDate = lastConsumeDate;
	}

	public String getRevokeTime() {
		return revokeTime;
	}

	public void setRevokeTime(String revokeTime) {
		this.revokeTime = revokeTime;
	}

}
