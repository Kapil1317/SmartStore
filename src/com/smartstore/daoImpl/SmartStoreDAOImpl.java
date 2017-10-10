package com.smartstore.daoImpl;

import com.smartstore.dao.SmartStoreDAO;
import com.smartstore.helper.SelectListHelper;
import com.smartstore.vo.StoreItemsVO;

public class SmartStoreDAOImpl implements SmartStoreDAO {

	@Override
	public StoreItemsVO loadItems() {

		System.out.println("Inside SmartStoreDAOImpl: loadItems()");
		
		//Fetching data from the stub class
		
		StoreItemsVO storeItemsVO = new StoreItemsVO();
		storeItemsVO.setStoreItem(SelectListHelper.loadItemStub());
		return storeItemsVO;
	}

}
