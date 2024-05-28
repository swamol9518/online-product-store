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
@WebServlet("/Buy")
public class BuyProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession hs=req.getSession(false);
        if(hs==null)
        {
        	req.setAttribute("msg","session Expired");
        	req.getRequestDispatcher("MSG.jsp").forward(req, res);
        }
        else
        {
        	String pcode=req.getParameter("Pcode");
        	ArrayList<CartBean>al=(ArrayList<CartBean>)hs.getAttribute("alist");
        	Iterator<CartBean>it=al.iterator();
        	while(it.hasNext())
    		{
        		CartBean cb=(CartBean)it.next();
    			if(pcode.equals(cb.getPcode()))
    			{
    				//req.setAttribute("cbean", cb);
    				req.getRequestDispatcher("BuyOrder.jsp").forward(req, res);
    				break;
    			}
    		}   //end of while loop
        }
        
        
    }
}
