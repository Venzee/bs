package net.venz.business.base.entity;

import java.io.Serializable;
import java.util.List;

import net.venz.business.fina.entity.Ledger;

public class MemberForm implements Serializable {

	private static final long serialVersionUID = -7629539954699763924L;
	private String w; // 关键字
	private Member m; // 会员
	private MemberCard mc; // 会员卡
	private Ledger c_ledg; // 工本费流水账
	private Ledger r_ledg; // 充值流水账
	private List<MemberCard> mc_list; // 卡列表

	public String getW() {
		return w;
	}

	public void setW(String w) {
		this.w = w;
	}

	public Member getM() {
		return m;
	}

	public void setM(Member m) {
		this.m = m;
	}

	public MemberCard getMc() {
		return mc;
	}

	public void setMc(MemberCard mc) {
		this.mc = mc;
	}

	public Ledger getC_ledg() {
		return c_ledg;
	}

	public void setC_ledg(Ledger c_ledg) {
		this.c_ledg = c_ledg;
	}

	public Ledger getR_ledg() {
		return r_ledg;
	}

	public void setR_ledg(Ledger r_ledg) {
		this.r_ledg = r_ledg;
	}

	public List<MemberCard> getMc_list() {
		return mc_list;
	}

	public void setMc_list(List<MemberCard> mc_list) {
		this.mc_list = mc_list;
	}

}
