package com.dhms.service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;

import com.dhms.model.UncountableLowStock;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class UncountableLowStockPDFgenerator {
	
	public static ByteArrayInputStream uncountableLowStockReport(List<UncountableLowStock> uncountableLowStock)
	{
		Document document = new Document();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		
		try
		{
			PdfPTable table = new PdfPTable(2);
			table.setWidthPercentage(100);
			table.setWidths(new int[] {1,1});
			
			Font headFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			PdfPCell hcell;
			
			hcell = new PdfPCell(new Phrase("Item ID",headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);
			
			hcell = new PdfPCell(new Phrase("Item Name",headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);
			
			for (UncountableLowStock uncountableLowStock1: uncountableLowStock)
			{
				PdfPCell cell;
				
				cell = new PdfPCell(new Phrase(String.valueOf(uncountableLowStock1.getItemId()  )));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);
				
				cell = new PdfPCell(new Phrase(String.valueOf(uncountableLowStock1.getItemName()  )));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);
			}
			
			PdfWriter.getInstance(document, out);
			document.open();
			document.add(table);
			document.close();
		}
		catch(DocumentException ex)
		{
			System.out.println("Error in countable low stock pdf generator: " + ex);
		}
		
		return new ByteArrayInputStream(out.toByteArray());
		
	}

}
