package OnlineProduct;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {

	   String pcode=req.getParameter("pcode");
	   ProductBean pb=new DeleteProductDAO().delete(pcode);
	   req.setAttribute("msg", "Product Delete Sucessfully...<br>");
	  // req.getRequestDispatcher("MSG.jsp").forward(req, res);
	   req.getRequestDispatcher("UpadateProduct.jsp").forward(req, res);
	     
   }
}
