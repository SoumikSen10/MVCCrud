package org.study.Contoller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.study.Model.DAO.LoginDao;
import org.study.Model.bean.UserBean;

/**
 * Servlet implementation class Login
 */

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
	    
		HttpSession session=request.getSession();
		
		UserBean ub=new UserBean();
		ub.setEmail(email);
		ub.setPass(pass);
		LoginDao ld=new LoginDao();
		boolean status=ld.login(ub);
		if(status)
		{
			session.setAttribute("EMAIL", email);
			//we can also add the name if we want to
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}

}
