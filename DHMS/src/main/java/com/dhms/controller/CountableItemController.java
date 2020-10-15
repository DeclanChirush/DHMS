package com.dhms.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.CountableItemRepo;
import com.dhms.dao.CountableLowstockRepo;
import com.dhms.model.CountableItems;
import com.dhms.model.CountableLowStock;

@Controller
public class CountableItemController {
	
	@Autowired
	CountableItemRepo crepo;
	
	
	@Autowired
	CountableLowstockRepo clowrepo;
	
	/*@RequestMapping("/")
	public String home()
	{
		return "home.jsp";
	}*/
	
	/*@RequestMapping("/viewCountableLowStock")
	public String viewCountableLowStock(Map<String, Object> map)
	{
		map.put("lowStockList", clowrepo.findAll());
		return "viewCountableLowStock.jsp";
	}*/
	
	@RequestMapping("/addCountableItem")
	public String addCountableItem(CountableItems cItem)  // adds countable items to the database
	{
		String itemId = generateNextId(getItemIds());
		cItem.setItemId(itemId);
		
		crepo.save(cItem);
		System.out.println("added countable item");
		return "/countableItemsAdvanced";
		//return "home.jsp";
		
		/*if(checkCountable == null)
		{
			/*crepo.save(cItem);
			System.out.println("added countable item");
			return "home.jsp";*/
			
			/*System.out.println("The id is already used");
			return "countableIdUsedError.jsp";
		}
		else
		{
			/*System.out.println("The id is already used");
			return "countableIdUsedError.jsp";*/
			
			/*System.out.println("added countable item");
			return "home.jsp";
		}*/
		
	}
	
	@RequestMapping("/addCountableItemPage")
	public String countableItemAddPage()
	{
		return "inventoryManagement/addCountableItem.jsp";
	}
	
	public ArrayList<String> getItemIds()
	{
		ArrayList<String> idArray = new ArrayList<String>();
		
		Iterable<CountableItems> citerable = crepo.findAll();
		
		for(CountableItems c: citerable)
		{
			idArray.add(c.getItemId());
		}
		System.out.println("fetched item ids");
		return idArray;
		
	}
	
	public String generateNextId(ArrayList<String> arraylist)
	{
		
		String id;
		int next = arraylist.size();
		next++;
		id = "ci" + next;

		while (arraylist.contains(id)) {
			next++;
			id = "ci" + next;
		}
		
		System.out.println("generated new item id");
		return id;
	}
	
	@RequestMapping("/getCountableItem")
	public ModelAndView getItem(@RequestParam String itemId)  //gets a single countable item based on the itemId
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/viewCountableItem.jsp");
		CountableItems citem = crepo.findById(itemId).orElse(new  CountableItems());
		
		String tempId = citem.getItemId();
		String tempName = citem.getItemName();
		
		System.out.println("Item id = " + tempId + " Item name = " + tempName);
		mv.addObject(citem);
		return mv;
	}
	
	@RequestMapping("/retrieveCountableItem")
	public ModelAndView retrieveItem(@RequestParam String itemId)  //gets a single countable item based on the itemId
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/retrieveCountableItem.jsp");
		CountableItems citem = crepo.findById(itemId).orElse(new  CountableItems());
		
		String tempId = citem.getItemId();
		String tempName = citem.getItemName();
		
		System.out.println("Item id = " + tempId + " Item name = " + tempName);
		mv.addObject(citem);
		return mv;
	}
	
	@RequestMapping("/processRetreive")
	public String processRetrieve(CountableItems citem, HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		int retrieveQuantity =  Integer.parseInt(request.getParameter("retrieveQuantity"));
		CountableItems citem1 = crepo.findById(itemId).orElse(new CountableItems());
		
		int remainingQuantity = citem1.getRemainingQuantity();
		int newQuantity = remainingQuantity - retrieveQuantity;
		String itemName = citem1.getItemName();
		
		boolean type = citem1.getType();
		System.out.println("type: " + type);
		if(type == true)
		{
			System.out.println("checking lower limit");
			int lowerLimit = citem1.getLowerLimit();
			if (newQuantity <= lowerLimit)
			{
				CountableLowStock clow = new CountableLowStock();
				clow.setItemId(itemId);
				clow.setItemName(itemName);
				clowrepo.save(clow);
				System.out.println("Adding to low stock items");
			}
		}
		
		citem1.setRemainingQuantity(newQuantity);
		crepo.save(citem1);
		
		//getItem(itemId);
		System.out.println("end of process retrieve");
		return "/viewAllCountableItems";
	}
	
	@RequestMapping("replenishCountableItem")
	public ModelAndView repleishItem(@RequestParam String itemId) 
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/replenishCountableItem.jsp");
		CountableItems citem = crepo.findById(itemId).orElse(new  CountableItems());
		
		String tempId = citem.getItemId();
		String tempName = citem.getItemName();
		
		
		System.out.println("Replenish \n Item id = " + tempId + " Item name = " + tempName);
		mv.addObject(citem);
		return mv;
	}
	
	@RequestMapping("/processReplenish")
	public String processReplenish(CountableItems citem, HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		int replenishQuantity =  Integer.parseInt(request.getParameter("replenishQuantity"));
		CountableItems citem1 = crepo.findById(itemId).orElse(new CountableItems());
		
		int remainingQuantity = citem1.getRemainingQuantity();
		int newQuantity = remainingQuantity + replenishQuantity;
		
		citem1.setRemainingQuantity(newQuantity);
		crepo.save(citem1);
		
		if(citem1.getType() == true)
		{
			int lowerLimit = citem1.getLowerLimit();
			
			if (remainingQuantity <= lowerLimit)
			{
				if(newQuantity > lowerLimit)
				{
					clowrepo.deleteById(itemId);
					System.out.println("Deleted repo from low stock countables");
				}
			}
		}
		
		System.out.println("end of process replenish");
		return "/countableItemsAdvanced";
	}
	
	@RequestMapping("/deleteCountableItem")
	public String deleteItem(String itemId) //deletes an item based on itemId
	{
		System.out.println("Deleting id : " + itemId);
		crepo.deleteById(itemId);
		return "/countableItemsAdvanced";
	}
	
	@RequestMapping("/countableItemDeleteConfirm")
	public ModelAndView deleteConfirm(@RequestParam String itemId) 
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/countableDeleteConfirm.jsp");
		CountableItems citem = crepo.findById(itemId).orElse(new  CountableItems());
		
		mv.addObject(citem);
		return mv;
	}
	
	@RequestMapping(value = "/viewAllCountableItems" /*, method = RequestMethod.GET*/)
	public String viewAllCountableItems(Map<String, Object> map)  //displaying all the countable items
	{
		map.put("itemList", crepo.findAll());
		System.out.println("Viewing all countable items");
		//int itemId = getNextId();
		//System.out.println("next countable id:" + itemId);
		return "inventoryManagement/viewAllCountableItems.jsp";
	}
	
	@RequestMapping(value = "/countableItemsAdvanced")
	public String countableItemsAdvanced(Map<String, Object> map)  //displaying all the countable items
	{
		map.put("itemList", crepo.findAll());
		//System.out.println("Viewing all countable items");
		return "inventoryManagement/countableItemsAdvanced.jsp";
	}
	
	@RequestMapping("/editCountableItem")
	public ModelAndView editItem(@RequestParam String itemId)
	{
		ModelAndView mv = new ModelAndView("inventoryManagement/editCountableItem.jsp");
		CountableItems citem = crepo.findById(itemId).orElse(new  CountableItems());
		
		mv.addObject(citem);
		return mv;
	}
	
	@RequestMapping("/processEditCountabltItem")
	public String processEdit(CountableItems citem, HttpServletRequest request, HttpServletResponse response)
	{
		String  itemId = request.getParameter("itemId"); 
		CountableItems citem1 = crepo.findById(itemId).orElse(new CountableItems());
		
		String newName = citem.getItemName();
		int newRemainingQuantity = citem.getRemainingQuantity();
		boolean newType = citem.getType();
		int newLowerLimit = citem.getLowerLimit();
		
		citem1.setItemName(newName);
		citem1.setRemainingQuantity(newRemainingQuantity);
		citem1.setType(newType);
		citem1.setLowerLimit(newLowerLimit);
		
		crepo.save(citem1);
		return "/countableItemsAdvanced";
	}
	

}
