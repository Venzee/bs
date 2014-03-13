package net.venz.core.base.entity;

import java.io.Serializable;

public class Page implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3041436827544897993L;
	private int pn = 1;// 当前页码,默认1
	private int pc = 1;// 总页数
	private int count = 0;// 总记录数
	private int pr = 15;// 每页记录数
	private int sr = 1;// 开始记录数

	/**
	 * 初使化
	 * 
	 * @param count
	 *            总记录数
	 * @param rpp
	 *            每页记录数
	 */
	public void init(int count) {
		setCount(count);// 总记录数
		if (getPr() < 15 || getPr() > 100) {
			setPr(pr);// 每页记录数
		}
		setSr((pn - 1) * this.pr);// 查询开始记录数
		if (count % this.pr == 0) {
			setPc(count / this.pr);// 总页数
		} else {
			setPc(count / this.pr + 1);// 总页数
		}

	}

	/**
	 * 构建分页
	 * 
	 * @param page
	 * @param count
	 */
	public static void buildPage(Page page, int count) {
		if (page == null) {
			page = new Page();
		}
		page.init(count);
	}

	public int getPn() {
		return pn;
	}

	public void setPn(int pn) {
		this.pn = pn;
	}

	public int getPc() {
		return pc;
	}

	public void setPc(int pc) {
		this.pc = pc;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPr() {
		return pr;
	}

	public void setPr(int pr) {
		this.pr = pr;
	}

	public int getSr() {
		return sr;
	}

	public void setSr(int sr) {
		this.sr = sr;
	}

}
