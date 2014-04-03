package net.venz.module.base.web;

import java.util.List;

import net.venz.module.base.entity.CardType;
import net.venz.module.base.service.CardTypeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cardtype")
public class CardTypeController {

	@Autowired
	private CardTypeService cardTypeService;
	
	@RequestMapping("/list")
	public String listCardType(ModelMap map) {
		int shopId = 0;
		List<CardType> cardTypeList = cardTypeService.getCardTypeALL(shopId);
		map.put("ctList", cardTypeList);
		return "../web/base/cardTypeList";
	}
	
}
