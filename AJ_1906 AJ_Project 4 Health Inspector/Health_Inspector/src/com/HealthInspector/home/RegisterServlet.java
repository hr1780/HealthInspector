package com.HealthInspector.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HealthInspector.Dao.RegisterDao;
import com.HealthInspector.Dao.RegisterDaoImpl;
import com.HealthInspector.bean.Register;
import com.HealthInspector.service.RegisterService;
import com.HealthInspector.service.RegisterServiceImpl;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String m_usertype = request.getParameter("user");
		String m_fname = request.getParameter("fname");
		String m_lname = request.getParameter("lname");
		int m_age = Integer.parseInt(request.getParameter("age"));
		String m_gender = request.getParameter("gender");
		long m_cnumber = Long.parseLong(request.getParameter("contactnumber"));
		String m_userid = request.getParameter("userid");
		String m_pass = request.getParameter("password");
		String m_rpass = request.getParameter("repass");
	
		Register register = new Register(m_usertype, m_fname, m_lname, m_age, m_gender, m_cnumber, m_userid, m_pass);
		RegisterService rDao = new RegisterServiceImpl();
		if(rDao.getregester(register)){
			out.println(" <script> ");
			out.println("alert('Register SucessFully');");
			out.print("</script>");
			System.out.print(register.getUserid());
			System.out.println(register.getFname());
			response.sendRedirect("loginForm.html");
		}
		else {
			out.println(" <script> ");
			out.println("alert('UserId ALready Taken');");
			out.print("</script>");
		}
	
		}

}
