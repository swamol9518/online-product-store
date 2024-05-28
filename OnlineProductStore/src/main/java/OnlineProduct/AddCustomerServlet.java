package OnlineProduct;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/customer")
public class AddCustomerServlet extends HttpServlet
{
   protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
	   String uname=req.getParameter("uname");
	   String pass=req.getParameter("pass");
	   String fname=req.getParameter("fname");
	   String lname=req.getParameter("lname");
	   String add=req.getParameter("addr");
	   String mid=req.getParameter("mid");
	   long phno=Long.parseLong(req.getParameter("phno"));
	   AddCustomerBean cb=new AddCustomerBean();
	   cb.setUname(uname);
	   cb.setPass(pass);
	   cb.setFname(fname);
	   cb.setLname(lname);
	   cb.setAddr(add);
	   cb.setMid(mid);
	   cb.setPhno(phno);
	   int k=new AddCustomerDAO().insert(cb);
	   if(k>0)
	   {
		req.setAttribute("msg", "Customer Register Sucess...");
		//req.getRequestDispatcher("MSG.jsp").forward(req, res);
		req.getRequestDispatcher("MSG.jsp").forward(req, res);
	   }
	   
	   
	   
   }
}
