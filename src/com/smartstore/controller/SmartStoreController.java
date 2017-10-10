package com.smartstore.controller;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smartstore.dao.SmartStoreDAO;
import com.smartstore.vo.StoreItemVO;
import com.smartstore.vo.StoreItemsVO;

@Controller
public class SmartStoreController {
	@Autowired
	@Qualifier("storeDao")
	private SmartStoreDAO smartStoreDAO;
	
	public void setSmartStoreDAO(SmartStoreDAO smartStoreDAO) {
		this.smartStoreDAO = smartStoreDAO;
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(method = RequestMethod.POST,value="/loadItems.do", produces = "application/json; charset=utf-8")
	public @ResponseBody String loadItems() throws Exception {
		
		System.out.println("hi inside smart store Controller : loadItems()");
		StoreItemsVO storeItemsVO = null;
		try{ 
		storeItemsVO = smartStoreDAO.loadItems();
		System.out.println("storeItemsVO" + storeItemsVO);
		}catch(Exception e){
			System.out.println("exception occured: "+e.getMessage());
		}
		JSONArray itemDetailsArr = new JSONArray();
		for(StoreItemVO item :  storeItemsVO.getStoreItem()){
			JSONObject itemDetails = new JSONObject();
			itemDetails.put("itemCode", item.getItemCode());
			itemDetails.put("itemName", item.getItemName());
			itemDetails.put("itemPrice", item.getItemPrice());
			itemDetails.put("itemImgName", item.getItemImgName());
			itemDetails.put("salesTax", item.getSalestax());
			
			itemDetailsArr.add(itemDetails);
		}
		
		return itemDetailsArr.toString();
	}
	
}