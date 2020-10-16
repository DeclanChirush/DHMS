package com.dhms.service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.dhms.model.UserLogs;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class PDFgeneratorUserLogs  {
	
	public static ByteArrayInputStream userLogsReport(List<UserLogs> userlogs) {
		

		Document document = new Document();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
			

		try {

			PdfPTable table = new PdfPTable(3);
			table.setWidthPercentage(100);
			table.setWidths(new int[] { 1, 2, 3});
			
			// 1st Heading
			Font heading = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			heading.setSize(20);
			heading.setColor(BaseColor.BLACK);
			Paragraph hotelname = new Paragraph("DHAMMIKA HOTEL MANAGEMENT SYSTEM\n\n", heading);
			hotelname.setAlignment(Paragraph.ALIGN_LEFT);

			// 2nd Heading
			Font heading2 = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			heading2.setSize(15);
			heading2.setColor(BaseColor.GRAY);
			Paragraph list = new Paragraph("UserLogs List\n\n", heading2);
			list.setAlignment(Paragraph.ALIGN_LEFT);

			Font headFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);

			PdfPCell hcell;

			hcell = new PdfPCell(new Phrase("UserLog ID", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("User name", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Date & Time", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);
			

			for (UserLogs userlog : userlogs) {

				PdfPCell cell;

				cell = new PdfPCell(new Phrase(String.valueOf(userlog.getId())));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(userlog.getUsername()));
				cell.setPaddingLeft(5);
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(userlog.getDate()));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

			}
			

			PdfWriter.getInstance(document, out);
			document.open();
			document.add(hotelname);
			document.add(list);
			document.add(table);
			document.close();
			
		} catch (DocumentException ex) {

			Logger.getLogger(PDFgenerator.class.getName()).log(Level.SEVERE, null, ex);
		}
		return new ByteArrayInputStream(out.toByteArray());

	}

}
