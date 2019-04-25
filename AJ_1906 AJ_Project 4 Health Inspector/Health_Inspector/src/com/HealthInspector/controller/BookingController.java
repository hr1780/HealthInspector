package com.HealthInspector.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.HealthInspector.bean.Appointment;
import com.HealthInspector.service.BookingService;
import com.HealthInspector.service.BookingServiceImpl;


@MultipartConfig
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BookingController() {
        super();       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int i =0;
		String m_pname = request.getParameter("pname");
			String m_age =request.getParameter("age");
			String m_gender = request.getParameter("gender");
			String m_cnumber =request.getParameter("contactnumber");
			String m_hname = request.getParameter("hname");
			String m_city = request.getParameter("city");
			String m_facility = request.getParameter("option2");
			Part filePart = request.getPart("data");
			String m_date = request.getParameter("cal");
			InputStream doc = filePart.getInputStream();
			
			Appointment app = new Appointment(m_pname, m_age, m_gender, m_cnumber, m_hname, m_city, m_facility, doc, m_date);
			
			BookingService bservice = new BookingServiceImpl();
					if(bservice.book(app)) {
						response.sendRedirect("ThankYou.html");
					}else {
						out.println("<script>");
						out.println("alert('You Not Sucessfully Booked Your Appointment');");
						out.println("</script>");
						response.sendRedirect("booking.html");
					}
	}
}

