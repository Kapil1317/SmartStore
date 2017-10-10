package com.smartstore.helper;

import java.util.ArrayList;
import java.util.List;

import com.smartstore.vo.StoreItemVO;

public class SelectListHelper {

	public static List<StoreItemVO> loadItemStub(){
		StoreItemVO storeItemVO = new StoreItemVO();
		storeItemVO.setItemCode(1);
		storeItemVO.setItemImgName("fitbit.jpeg");
		storeItemVO.setItemName("Fitbit");
		storeItemVO.setItemPrice(1000);
		storeItemVO.setSalestax(0);
		
		StoreItemVO storeItemVO1 = new StoreItemVO();
		storeItemVO1.setItemCode(2);
		storeItemVO1.setItemImgName("macbook.jpeg");
		storeItemVO1.setItemName("Macbook");
		storeItemVO1.setItemPrice(50000);
		storeItemVO1.setSalestax(10000);
		
		StoreItemVO storeItemVO2 = new StoreItemVO();
		storeItemVO2.setItemCode(3);
		storeItemVO2.setItemImgName("nokia6.jpg");
		storeItemVO2.setItemName("Nokia 6");
		storeItemVO2.setItemPrice(15000);
		storeItemVO2.setSalestax(1500);
		
		StoreItemVO storeItemVO3 = new StoreItemVO();
		storeItemVO3.setItemCode(4);
		storeItemVO3.setItemImgName("jbl.jpg");
		storeItemVO3.setItemName("JBL Speakers");
		storeItemVO3.setItemPrice(9000);
		storeItemVO3.setSalestax(0);
		
		StoreItemVO storeItemVO4 = new StoreItemVO();
		storeItemVO4.setItemCode(5);
		storeItemVO4.setItemImgName("gear.jpg");
		storeItemVO4.setItemName("Samsung Gear");
		storeItemVO4.setItemPrice(15000);
		storeItemVO4.setSalestax(1500);
		
		StoreItemVO storeItemVO5 = new StoreItemVO();
		storeItemVO5.setItemCode(6);
		storeItemVO5.setItemImgName("senheiser.jpg");
		storeItemVO5.setItemName("Sennheiser Headset");
		storeItemVO5.setItemPrice(2000);
		storeItemVO5.setSalestax(0);
		
		List<StoreItemVO> items = new ArrayList<StoreItemVO>();
		items.add(storeItemVO);
		items.add(storeItemVO1);
		items.add(storeItemVO2);
		items.add(storeItemVO3);
		items.add(storeItemVO4);
		items.add(storeItemVO5);
		
		return items;
		
	}
	
}
