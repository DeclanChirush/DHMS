package com.dhms.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.AdvertisementRepo;
import com.dhms.model.Advertisement;


@Controller
//@RequestMapping(value = "/advertisement")

public class AdvertisementController {

		@RequestMapping(value = "/")
		public ModelAndView home() {
			ModelAndView model = new ModelAndView("backendDashboard.jsp");
			return model;
			
		}
		
		@RequestMapping(value = "/report")
		public ModelAndView reportByType() {
			ModelAndView model = new ModelAndView("/advertisementManagement/report.jsp");
			return model;
			
		}
		
	

//		@RequestMapping(value = "/view")
//		public String view(@RequestParam("title") String title,@RequestParam("percentage") String percentage,@RequestParam("timePeriod") String timePeriod,@RequestParam("description") String description, Model model ) {
//		
//			model.addAttribute("title",title);
//			model.addAttribute("percentage",percentage);
//			model.addAttribute("timePeriod",timePeriod);
//			model.addAttribute("description",description);
//			
//			return "/advertisementManagement/advertisementViewVersion1.jsp";
//		}
		
		
//		 @RequestMapping(value = "/view")
//		    public String subm(@ModelAttribute("advertisementForm") Advertisement advertisement, BindingResult result, Model model) {
//		        if (result.hasErrors()) {
//		            return "error";
//		        }
//		        model.addAttribute("title", advertisement.getTitle());
//		        model.addAttribute("percentage", advertisement.getPercentage());
//		    	model.addAttribute("timePeriod",advertisement.getTimePeriod());
//				model.addAttribute("description",advertisement.getDescription());
//
//		        model.addAttribute("msg", "10%");
//			
//		        return "/advertisementManagement/advertisementViewVersion1.jsp";
//				
//		    }
			
		
//			@ModelAttribute
//		    public void addAttributes(Model model, Advertisement advertisement) {
//			 
//			 	model.addAttribute("title", advertisement.getTitle());
//		        model.addAttribute("percentage", advertisement.getPercentage());
//		    	model.addAttribute("timePeriod",advertisement.getTimePeriod());
//				model.addAttribute("description",advertisement.getDescription());
//			
//		        
//		      
//		    }
		
		 @RequestMapping(value = "/advertisementSearch")
			public ModelAndView search(@RequestParam String type) {
					
			 	System.out.println(type);
			 	
			 	String t = "food";
			 	
			 	System.out.println(t);
			 	
				
				if("food".equals(type)) {
					
					System.out.println("Inside food");
					ModelAndView model1 = new ModelAndView("/advertisementManagement/advertisementViewVersion1.jsp");
					List<Advertisement> advertisementList1 = getAdvertisementType(type);
					model1.addObject("advertisementList1", advertisementList1);
					
					return model1;
					
					
				}else if("booking".equals(type)){
			
					ModelAndView model2 = new ModelAndView("/advertisementManagement/advertisementViewVersion2.jsp");
					List<Advertisement> advertisementList2 = getAdvertisementType(type);
					model2.addObject("advertisementList2", advertisementList2);
					
					return model2;
				
				}else {
					
					ModelAndView model3 = new ModelAndView("/advertisementManagement/error.jsp");
					return model3;
				}
					
				
			}
		
		
		 @RequestMapping(value = "/view")
			public ModelAndView listView() {
				
				ModelAndView model = new ModelAndView("/advertisementManagement/advertisementViewVersion1.jsp");
				List<Advertisement> advertisementList1 = getAllAdvertisements();
				model.addObject("advertisementList1", advertisementList1);
				
				return model;
			}
			 
		 
		@RequestMapping(value = "/advertisementList")
		public ModelAndView list() {
			
			ModelAndView model = new ModelAndView("/advertisementManagement/advertisement_list.jsp");
			List<Advertisement> advertisementList = getAllAdvertisements();
			model.addObject("advertisementList", advertisementList);
			
			return model;
		}
		
		@RequestMapping(value = "/addAdvertisement/", method = RequestMethod.GET)
		public ModelAndView addAdvertisement() {
			
			ModelAndView model = new ModelAndView();
			Advertisement advertisement = new Advertisement();
			
			model.addObject("advertisementForm", advertisement);
			model.setViewName("/advertisementManagement/advertisement_form.jsp");
			
			return model;
			
		}
		
		@RequestMapping(value = "/editAdvertisement", method = RequestMethod.GET)
		public ModelAndView editAdvertisement(@RequestParam long id) {
			
			ModelAndView model = new ModelAndView();
			Advertisement advertisement = getAdvertisementById(id);
			
			model.addObject("advertisementForm", advertisement);
			model.setViewName("/advertisementManagement/advertisement_form.jsp");
			
			return model;
		}
		
		@RequestMapping(value = "/saveAdvertisement", method = RequestMethod.POST)
		public ModelAndView save(@ModelAttribute("advertisementForm")Advertisement advertisement) {
			saveOrUpdate(advertisement);
			
			return new ModelAndView("redirect:/advertisementList");
		}
		
		@RequestMapping(value = "/deleteAdvertisement")
		public ModelAndView delete(@RequestParam("id")long id) {
			deleteAdvertisement(id);
			
			return new ModelAndView("redirect:/advertisementList");
			
		}
		
		
		@Autowired
		AdvertisementRepo advertisementRepo;

		
		public List<Advertisement> getAllAdvertisements() {
			return (List<Advertisement>) advertisementRepo.findAll();
		}

	
		public Advertisement getAdvertisementById(long id) {
			return advertisementRepo.findById(id).get();	
		}

	
		public void saveOrUpdate(Advertisement advertisement) {
			advertisementRepo.save(advertisement);
		}

		
		public void deleteAdvertisement(long id) {
			advertisementRepo.deleteById(id);	
		}
		

		public List<Advertisement> getAdvertisementType(String type) {
			return (List<Advertisement>)advertisementRepo.findByType(type);	
		}

	
}
