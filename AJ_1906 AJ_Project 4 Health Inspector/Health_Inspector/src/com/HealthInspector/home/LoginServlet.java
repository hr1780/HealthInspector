package com.HealthInspector.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HealthInspector.bean.Login;
import com.HealthInspector.service.HealthInspectorService;
import com.HealthInspector.service.HealthInspectorServiceImpl;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String m_userid = request.getParameter("userid");
		String m_pass = request.getParameter("password");
		System.out.println(m_userid+m_pass);
		
		Login login = new Login(m_userid,m_pass);
		HealthInspectorService hid = new HealthInspectorServiceImpl();
		if(hid.validatelogin(login)) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", m_userid);
			 RequestDispatcher rd=request.getRequestDispatcher("searchhome.jsp");  
		        rd.include(request, response);
		}
		else {
			 out.println("<script type=\"text/javascript\">");
			 out.println("alert('User or password incorrect');");
			 out.println("</script>");
			 RequestDispatcher rd=request.getRequestDispatcher("LoginForm.html");  
		        rd.include(request, response);
		}		
	}

}
