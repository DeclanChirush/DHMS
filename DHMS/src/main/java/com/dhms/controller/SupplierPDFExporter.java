package com.dhms.controller;

import java.awt.Color;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.dhms.model.Supplier;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;



/*public class SupplierPDFExporter {
	private List<Supplier> listSuppliers;

	public SupplierPDFExporter(List<Supplier> listSuppliers) {
		this.listSuppliers = listSuppliers;
	}
	
	private void writeTableHeader(PdfPTable table) {
		PdfPCell cell = new PdfPCell();
		
		cell.setBackgroundColor(Color.BLUE);
		cell.setPadding(5);
		
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(Color.WHITE);
		
		cell.setPhrase(new Phrase("Supplier Name", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Supplier Email", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Supplier Address", font));
		table.addCell(cell);
		
		cell.setPhrase(new Phrase("Contact Person", font));
		table.addCell(cell);
		
	}
	
	private void writeTableData(PdfPTable table) {
		for (Supplier supplier : listSuppliers) {
			
			table.addCell(String.valueOf(supplier.getSupplier_name()));
			table.addCell(String.valueOf(supplier.getSupplier_email()));
			table.addCell(String.valueOf(supplier.getSupplier_address()));
			table.addCell(String.valueOf(supplier.getContact_person()));
			
		}
	}
	
	public void export(HttpServletResponse response) throws DocumentException, IOException {
		Document document = new Document(PageSize.A4);
		
		PdfWriter.getInstance(document, response.getOutputStream());
		
		document.open();
		
		Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
		font.setColor(Color.BLACK);
		font.setSize(18);
		
		Paragraph title = new Paragraph("List of Suppliers", font);
		title.setAlignment(Paragraph.ALIGN_CENTER);
		document.add(title);
		
		PdfPTable table = new PdfPTable(4);
		table.setWidthPercentage(100);
		table.setSpacingBefore(15);
		
		writeTableHeader(table);
		writeTableData(table);
		
		document.add(table);
		
		document.close();
	}
} */
