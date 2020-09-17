package com.dhms.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dhms.dao.AdvertisementRepo;
import com.dhms.model.Advertisement;
import com.dhms.service.PDFgenerator;

@Controller
public class PDFgeneratorController {

	@RequestMapping(value = "/reportType", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> advertisementReportByType(@RequestParam String type) throws IOException {

		List<Advertisement> advertisement = (List<Advertisement>) getAdvertisementType(type);
		ByteArrayInputStream bais = PDFgenerator.advertsementReport(advertisement);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=advertisementByType.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}

	@RequestMapping(value = "/reportAllAdvertisement", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> advertisementAllReport() throws IOException {

		List<Advertisement> advertisement = (List<Advertisement>) getAllAdvertisements();
		ByteArrayInputStream bais = PDFgenerator.advertsementReport(advertisement);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=advertisementByType.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

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
		return (List<Advertisement>) advertisementRepo.findByType(type);
	}

}
