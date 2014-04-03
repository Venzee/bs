package net.venz.module.base.web;

import java.util.List;

import net.venz.core.base.entity.Page;
import net.venz.module.base.entity.MemberForm;
import net.venz.module.base.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/m")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@ResponseBody
	@RequestMapping("/add")
	public String add(MemberForm form) {
		int result = memberService.addMember(form.getM(), form.getMc());
		return String.valueOf(result);
	}

	@RequestMapping("/list")
	public String listPage(MemberForm form, Page page, ModelMap map) {
		int count = memberService.countMemberList(form);
		Page.buildPage(page, count);
		List<MemberForm> memberList = memberService.getMemberListPage(form, page);
		map.put("form", form);
		map.put("page", page);
		map.put("mList", memberList);
		return "../web/base/mlist";
	}

	@ResponseBody
	@RequestMapping(value = "/info", produces = "text/html;charset=UTF-8")
	public String getMemberInfo() {

		return "";
	}
}
