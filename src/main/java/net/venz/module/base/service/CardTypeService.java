package net.venz.module.base.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.venz.core.util.DataUtil;
import net.venz.module.base.dao.CardTypeDao;
import net.venz.module.base.entity.CardType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardTypeService {

	@Autowired
	private CardTypeDao cardTypeDao;
	
	public void addCardType(CardType cardType) {
		cardTypeDao.addCardType(DataUtil.parseObjectToMap(cardType, CardType.class));
	}
	
	public List<CardType> getCardTypeALL(int shopId) {
		List<CardType> list = new ArrayList<CardType>();
		List<Map<String, Object>> dataList = cardTypeDao.getCardTypeAll(shopId);
		for (Map<String, Object> map : dataList) {
			CardType cardType = (CardType) DataUtil.parseMapToObject(map, CardType.class);
			list.add(cardType);
		}
		return list;
	}
	
	public List<CardType> getCardType4OpenCard(int shopId) {
		List<CardType> list = new ArrayList<CardType>();
		List<Map<String, Object>> dataList = cardTypeDao.getCardType4OpenCard(shopId);
		for (Map<String, Object> map : dataList) {
			CardType cardType = (CardType) DataUtil.parseMapToObject(map, CardType.class);
			list.add(cardType);
		}
		return list;
	}
	
	public List<CardType> getCardType4Select(int shopId) {
		List<CardType> list = new ArrayList<CardType>();
		List<Map<String, Object>> dataList = cardTypeDao.getCardType4Select(shopId);
		for (Map<String, Object> map : dataList) {
			CardType cardType = (CardType) DataUtil.parseMapToObject(map, CardType.class);
			list.add(cardType);
		}
		return list;
	}
	
}
