package OnlineProduct;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/viewBill")
public class viewOrderServlet extends HttpServlet 
{

	 protected void doGet (HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	    {
	    	HttpSession hs=req.getSession(false);//Accessing existing session
	    	if(hs==null)
	    	{
	    		req.setAttribute("msg","Session Expired...<br>");
	    		req.getRequestDispatcher("MSG.jsp").forward(req, res);
	    		
	    	}
	    	else
	    	{
	    		//ArrayList<ProductBean>al=new ViewAllProductsDAO().retirve();
	    		ArrayList<OrderBean>al=new ViewOrderDAO().view();
	    		hs.setAttribute("list", al);
	    		req.getRequestDispatcher("ViewOrder.jsp").forward(req, res);
	    	}
	    }
}
