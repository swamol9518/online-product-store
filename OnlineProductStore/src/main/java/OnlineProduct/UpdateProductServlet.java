package OnlineProduct;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{
 @Override
 protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
	 HttpSession hs=req.getSession(false);
	 if(hs==null)
	 {
		 req.setAttribute("msg","Session Expired...<br>");
		 req.getRequestDispatcher("MSG.jsp").forward(req, res);
	 }
	 else
	 {
		 ArrayList<ProductBean>al=(ArrayList<ProductBean>)hs.getAttribute("alist");
		 String pcode=req.getParameter("pcode");
		 float price=Float.parseFloat(req.getParameter("price"));
		 int Qty=Integer.parseInt(req.getParameter("qty"));
		 Iterator<ProductBean>it=al.iterator();
		 while(it.hasNext())
		 {
			 ProductBean pb=(ProductBean)it.next();
			 if(pcode.equals(pb.getCode()))
			 {
				 pb.setPrice(price);
				 pb.setQty(Qty);
				 int k=new UpadateProductDAO().update(pb);
				 if(k>0)
				 {
					 req.setAttribute("msg","<b>Product Upadted Sucessfully...</b><br>");
					 req.getRequestDispatcher("UpadateProduct.jsp").forward(req, res);
				 }//end of if
				 break;
			 }//end of if
		 } //end of while
	 }
 }
}
