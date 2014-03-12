package net.venz.business.base;

import java.io.Serializable;
import java.util.List;

import net.venz.business.base.entity.Member;
import net.venz.business.base.entity.MemberCard;

public class MemberForm implements Serializable {

	private static final long serialVersionUID = -7629539954699763924L;
	private String keyword;
	private Member member;
	private MemberCard memberCard;
	private List<MemberCard> memberCards;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public MemberCard getMemberCard() {
		return memberCard;
	}

	public void setMemberCard(MemberCard memberCard) {
		this.memberCard = memberCard;
	}

	public List<MemberCard> getMemberCards() {
		return memberCards;
	}

	public void setMemberCards(List<MemberCard> memberCards) {
		this.memberCards = memberCards;
	}

}
