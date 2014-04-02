package net.venz.business.base.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.venz.business.base.dao.CardTypeDao;
import net.venz.business.base.entity.CardType;
import net.venz.core.util.DataUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CadTypeService {

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
