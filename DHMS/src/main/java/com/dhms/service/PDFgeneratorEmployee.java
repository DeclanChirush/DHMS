package com.dhms.service;

import com.dhms.model.Advertisement;
import com.dhms.model.Employee;
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

public class PDFgeneratorEmployee {

	public static ByteArrayInputStream employeeReport(List<Employee> employee) {

		Document document = new Document();
		ByteArrayOutputStream out = new ByteArrayOutputStream();

		try {

			PdfPTable table = new PdfPTable(6);
			table.setWidthPercentage(100);
			table.setWidths(new int[] { 3, 4, 3, 3, 2, 4 });

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
			Paragraph list = new Paragraph("Employee List\n\n", heading2);
			list.setAlignment(Paragraph.ALIGN_LEFT);

			Font headFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);

			// Address
			Font addressLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			addressLine.setSize(10);
			addressLine.setColor(BaseColor.BLACK);
			Paragraph address = new Paragraph("\n\n\nDhammika Hotel,\nDambulla Road,\nBakamuna.\n\n\n", addressLine);
			address.setAlignment(Paragraph.ALIGN_LEFT);

			// Date
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Calendar dateTime = Calendar.getInstance();
			Font dateLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			dateLine.setSize(10);
			dateLine.setColor(BaseColor.BLACK);
			Paragraph date = new Paragraph("Date : " + dateFormat.format(dateTime.getTime()), dateLine);
			date.setAlignment(Paragraph.ALIGN_LEFT);

			// Signature
			Font signatureLine = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
			signatureLine.setSize(10);
			signatureLine.setColor(BaseColor.BLACK);
			Paragraph signature = new Paragraph("Signature : ...........................", signatureLine);
			signature.setAlignment(Paragraph.ALIGN_RIGHT);

			PdfPCell hcell;

			hcell = new PdfPCell(new Phrase("Name", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Address", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("NIC number", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("DateOfBirth", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Salary", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Designation", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			for (Employee employees : employee) {

				PdfPCell cell;

	
				cell = new PdfPCell(new Phrase(employees.getEmpName()));
				cell.setPaddingLeft(5);
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(employees.getAddress()));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(String.valueOf(employees.getNicNo())));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(employees.getDob()));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell.setPaddingRight(5);
				table.addCell(cell);


				cell = new PdfPCell(new Phrase(String.valueOf(employees.getSalary())));
				cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);
				
				cell = new PdfPCell(new Phrase(employees.getDesignation()));
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

			Logger.getLogger(PDFgeneratorEmployee.class.getName()).log(Level.SEVERE, null, ex);
		}
		return new ByteArrayInputStream(out.toByteArray());

	}
}