package com.dhms.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.UncountableItemRepo;
import com.dhms.dao.UncountableLowStockRepo;
import com.dhms.model.CountableItems;
import com.dhms.model.UncountableItems;
import com.dhms.model.UncountableLowStock;

@Controller
public class UncountableItemController {
	
	@Autowired
	UncountableItemRepo urepo;
	
	@Autowired
	UncountableLowStockRepo ulowrepo;
	
	@RequestMapping("/addUncountableItem")   // add anew uncountable item
	public String addUncountableItem(UncountableItems uitem)
	{
		String itemId = generateNextId(getItemIds());
		uitem.setItemId(itemId);
		
		urepo.save(uitem);
		System.out.println("Added uncountable item");
		return "/uncountableItemsAdvanced";
	}
	
	public ArrayList<String> getItemIds()
	{
		ArrayList<String> idArray = new ArrayList<String>();
		
		Iterable<UncountableItems> uiterable = urepo.findAll();
		
		for(UncountableItems u: uiterable)
		{
			idArray.add(u.getItemId());
		}
		System.out.println("fetched item ids");
		return idArray;
		
	}
	
	public String generateNextId(ArrayList<String> arraylist)
	{
		
		String id;
		int next = arraylist.size();
		next++;
		id = "ui" + next;

		while (arraylist.contains(id)) {
			next++;
			id = "ui" + next;
		}
		
		System.out.println("generated new uncountable item id");
		return id;
	}
	
	@RequestMapping("/getUncountableItem")   //gets an uncountable item based on item id
	public ModelAndView getItem(@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/viewUncountableItem.jsp");
		UncountableItems uitem = urepo.findById(itemId).orElse(new UncountableItems());
		
		mv.addObject(uitem);
		return mv;
	}
	
	@RequestMapping("/retrieveUncountableItem")
	public ModelAndView retrieveItem(@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/retrieveUncountableItems.jsp");
		UncountableItems uitem = urepo.findById(itemId).orElse(new UncountableItems());
		
		mv.addObject(uitem);
		return mv;
	}
	
	@RequestMapping("/processRetrieveU")   // process the retrieval of uncountable items
	public String processRetrieve(UncountableItems uitem, HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		double retrieveAmount = Double.parseDouble(request.getParameter("retieveAmount"));
		UncountableItems uitem1 = urepo.findById(itemId).orElse(new UncountableItems());
		
		double remainingAmount =  uitem1.getRemainingAmount();
		double newAmount = remainingAmount - retrieveAmount;
		System.out.println("calculated new Amount");
		String itemName = uitem1.getItemName();
		
		boolean type = uitem1.isType();
		
		if(type == true)
		{
			System.out.println("Checking lower limit");
			double lowerLimit = uitem1.getLowerLimit();
			
			if(newAmount <= lowerLimit)
			{
				UncountableLowStock ulow = new UncountableLowStock();
				ulow.setItemId(itemId);
				ulow.setItemName(itemName);
				ulowrepo.save(ulow);
				System.out.println("Adding to low stock items");
			}
		}
		
		uitem1.setRemainingAmount(newAmount);
		urepo.save(uitem1);
		
		return "/viewAllUncountableItems";
	}
	
	@RequestMapping("/replenishUncountableItem")
	public ModelAndView replenishItem (@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/replenishUncountableItem.jsp");
		UncountableItems uitem = urepo.findById(itemId).orElse(new UncountableItems());
		
		mv.addObject(uitem);
		return mv;
	}
	
	@RequestMapping("/processReplenishU")
	public String processReplenish(UncountableItems uitem,  HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		double replenishAmount = Double.parseDouble(request.getParameter("replenishAmount"));
		UncountableItems uitem1 = urepo.findById(itemId).orElse(new UncountableItems());
		
		double remainingAmount = uitem1.getRemainingAmount();
		double newAmount = remainingAmount + replenishAmount;
		
		uitem1.setRemainingAmount(newAmount);
		urepo.save(uitem1);
		
		System.out.println("Replenish complete");
		boolean type = uitem1.isType();
		if(type == true)
		{
			System.out.println("Detected item is critical");
			
			double lowerLimit = uitem1.getLowerLimit();
			if (remainingAmount <= lowerLimit) 
			{
				System.out.println("The item remining is lower or equal to lower limit");
				if (newAmount > lowerLimit)
				{
					ulowrepo.deleteById(itemId);
					System.out.println("Deleted repo from low stock uncountables");
				}
			}
		}
		
		return "/uncountableItemsAdvanced";
	}
	
	@RequestMapping("/deleteUncountableItem")  //deletes an item based on itemId
	public String deleteItem(String itemId) 
	{
		System.out.println("Deleting id : " + itemId);
		urepo.deleteById(itemId);
		return "/uncountableItemsAdvanced";
	}
	
	@RequestMapping("/uncountableItemDeleteConfirm")
	public ModelAndView deleteConfirm(@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/uncountableDeleteConfirm.jsp");
		UncountableItems uitem = urepo.findById(itemId).orElse(new UncountableItems());
		
		mv.addObject(uitem);
		return mv;
	}
	
	@RequestMapping(value="/viewAllUncountableItems")  //  show all uncountable items
	public String viewAllUncountableItems(Map<String, Object> map)
	{
		map.put("itemList", urepo.findAll());
		return "inventoryManagement/viewAllUncountableItems.jsp";
	}
	
	@RequestMapping(value="/uncountableItemsAdvanced")
	public String uncountableItemsAdvanced(Map<String, Object> map)
	{
		map.put("itemList", urepo.findAll());
		return "inventoryManagement/uncountableItemsAdvanced.jsp";
	}
	
	@RequestMapping("/editUncountableItem")
	public ModelAndView editItem(@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/editUncountableItem.jsp");
		UncountableItems uitem = urepo.findById(itemId).orElse(new  UncountableItems());
		
		mv.addObject(uitem);
		return mv;
	}
	
	@RequestMapping("/processEditUncountabltItem")
	public String processEdit(UncountableItems uitem, HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		UncountableItems uitem1 = urepo.findById(itemId).orElse(new UncountableItems());
		
		String newName = uitem.getItemName();
		double newRemainingAmount = uitem.getRemainingAmount();
		boolean newType = uitem.isType();
		String newUnit = uitem.getUnit();
		double newLowerLimit = uitem.getLowerLimit();
		
		uitem1.setItemName(newName);
		uitem1.setRemainingAmount(newRemainingAmount);
		uitem1.setUnit(newUnit);
		uitem1.setType(newType);
		uitem1.setLowerLimit(newLowerLimit);
		
		urepo.save(uitem1);
		return "/uncountableItemsAdvanced";
	}
}
