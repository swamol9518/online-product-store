package OnlineProduct;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/viewcart")
public class ViewCartDetail extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
	  HttpSession hs=req.getSession(false);
	  if(hs==null)
	  {
		  req.setAttribute("msg","Session Expired...<br>");
		  req.getRequestDispatcher("MSG,jsp").forward(req, res);
	  }
	  else
	  {
		  ArrayList<CartBean>al=new ViewCartDAO().retrive();
		  hs.setAttribute("alist", al);
		  req.getRequestDispatcher("CartView.jsp").forward(req, res);
	  }
   }
}
