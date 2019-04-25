package com.HealthInspector.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HealthInspector.Dao.DoctorRegisterDao;
import com.HealthInspector.Dao.DoctorRegisterDaoImpl;
import com.HealthInspector.bean.Doctor;
import com.HealthInspector.service.DoctorRegisterService;
import com.HealthInspector.service.DoctorRegisterServiceImpl;

public class DoctorRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public DoctorRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		PrintWriter out = response.getWriter();
		String m_dId = request.getParameter("did");
		String m_name = request.getParameter("name");
		String m_address = request.getParameter("address");
		String m_spec = request.getParameter("psw");
		String m_slot = request.getParameter("shift");
		String m_con = request.getParameter("cno");
		
		System.out.println(m_name+m_address+m_spec+m_slot+m_con);
		Doctor doctor = new Doctor(m_dId, m_name, m_spec, m_slot, m_con, m_address);
		DoctorRegisterService rDao = new DoctorRegisterServiceImpl();
		if(rDao.getregester(doctor)) {
			response.sendRedirect("doctorthanks.jsp");
		}
	}

}
