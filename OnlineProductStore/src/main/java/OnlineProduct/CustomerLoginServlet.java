package OnlineProduct;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/cust")
public class CustomerLoginServlet extends HttpServlet
{   @Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		AddCustomerBean cb=new CustomerLoginDAO().login(uname, pass);
		if(cb==null)
		{
			req.setAttribute("msg","Invalid Login Process");
			req.getRequestDispatcher("MSG.jsp").forward(req, res);
			
		}
		else
		{
			HttpSession hs=req.getSession();//creating new session
			hs.setAttribute("cbean", cb);
			req.getRequestDispatcher("CustomerLogin.jsp").forward(req, res);
			
		}
	}

}
