// BY IT19180526

package com.dhms.service;

import com.dhms.model.Transaction;
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

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GenerateAccountingReport {

	public static ByteArrayInputStream accountingReport(List<Transaction> transaction,String reporttype) {

		Document document = new Document();
		ByteArrayOutputStream out = new ByteArrayOutputStream();

		try {

			PdfPTable table = new PdfPTable(6);
			table.setWidthPercentage(100);
			table.setWidths(new int[] { 1, 2, 2, 3, 2, 2 });

			// 1st Heading
			Font heading = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			heading.setSize(20);
			heading.setColor(BaseColor.BLUE);
			Paragraph hotelname = new Paragraph("DHAMMIKA HOTEL MANAGEMENT SYSTEM\n\n", heading);
			hotelname.setAlignment(Paragraph.ALIGN_LEFT);

			// 2nd Heading
			Font heading2 = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			heading2.setSize(15);
			heading2.setColor(BaseColor.RED);
			Paragraph list = new Paragraph("Transactions List " + reporttype + " \n\n", heading2);
			list.setAlignment(Paragraph.ALIGN_LEFT);

			// Table Style
			Font headFont = FontFactory.getFont(FontFactory.TIMES);
			headFont.setSize(10);

			// Address
			Font addressLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			addressLine.setSize(10);
			addressLine.setColor(BaseColor.DARK_GRAY);
			Paragraph address = new Paragraph("\n\n\nDhammika Hotel,\nDambulla Road,\nBakamuna.\n\n\n", addressLine);
			address.setAlignment(Paragraph.ALIGN_LEFT);

			// Date
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Calendar dateTime = Calendar.getInstance();
			Font dateLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			dateLine.setSize(10);
			dateLine.setColor(BaseColor.DARK_GRAY);
			Paragraph date = new Paragraph("Date : " + dateFormat.format(dateTime.getTime()), dateLine);
			date.setAlignment(Paragraph.ALIGN_LEFT);

			// Signature
			Font signatureLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			signatureLine.setSize(10);
			signatureLine.setColor(BaseColor.DARK_GRAY);
			Paragraph signature = new Paragraph("Signature : ...........................", signatureLine);
			signature.setAlignment(Paragraph.ALIGN_RIGHT);

			PdfPCell hcell;

			hcell = new PdfPCell(new Phrase("ID", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("DATE", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("TYPE", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("CATEGORIE", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("DESCRIPTION", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("AMOUNT", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			for (Transaction transactions : transaction) {

				PdfPCell cell;

				cell = new PdfPCell(new Phrase(String.valueOf(transactions.getId()), headFont));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(transactions.getDate(), headFont));
				cell.setPaddingLeft(5);
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(transactions.getType(), headFont));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(transactions.getCategorie(), headFont));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(transactions.getDescription(), headFont));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(String.valueOf(transactions.getAmount()), headFont));
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
			document.add(address);
			document.add(date);
			document.add(signature);
			document.close();

		} catch (DocumentException ex) {

			Logger.getLogger(GenerateAccountingReport.class.getName()).log(Level.SEVERE, null, ex);
		}
		return new ByteArrayInputStream(out.toByteArray());
	}
}
