
package OnlineProduct;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/AddCart")
public class CustomerCartServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
    	  HttpSession hs=req.getSession(false);
    	  if(hs==null)
    	  {
    		  req.setAttribute("msg","Session Expired..<br>");
    		  req.getRequestDispatcher("MSG.jsp");
    	  }
    	  else
    	  {
    		  CartBean cb=new CartBean();
    		  String code=req.getParameter("pcode");
        	  String ProductName=req.getParameter("pname");
        	//  String price=req.getParameter("price");
        	  float price=Float.parseFloat(req.getParameter("price"));
        	  int quantity=Integer.parseInt(req.getParameter("pqty"));
        	  cb.setPcode(code);
        	  cb.setPname(ProductName);
        	  cb.setPrice(price);
        	  cb.setQty(quantity);
        	 int k=new AddCartDAO().insert(cb);
        	 hs.setAttribute("cart", cb);
        	 if(k>0)
        	 {  
        		 
        		 req.setAttribute("msg","Cart Detail Added Sucessfully...");
        		 //req.getRequestDispatcher("MSG.jsp").forward(req, res);
        		 req.getRequestDispatcher("Cart.jsp").forward(req, res);
        		 
        	 }
    	  }
    	  
    	  
    }
}




