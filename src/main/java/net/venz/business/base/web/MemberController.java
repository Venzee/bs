package net.venz.business.base.web;

import java.util.List;

import net.venz.business.base.MemberForm;
import net.venz.business.base.entity.Member;
import net.venz.business.base.entity.MemberCard;
import net.venz.business.base.service.MemberService;
import net.venz.core.base.entity.Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/m")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/add")
	public String add(Member member, MemberCard memberCard) {
		memberService.addMember(member, memberCard);
		return "redirect:list";
	}
	
	@RequestMapping("/list")
	public String listPage(MemberForm form, Page page, ModelMap map) {
		int count = memberService.countMemberList(form);
		Page.buildPage(page, count);
		List<MemberForm> memberList = memberService.getMemberListPage(form, page);
		map.put("form", form);
		map.put("page", page);
		map.put("mList", memberList);
		return "../web/index";
	}
}
