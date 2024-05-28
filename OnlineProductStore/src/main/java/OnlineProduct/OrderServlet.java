package OnlineProduct;

import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        HttpSession hs = req.getSession(false);
        if (hs == null) 
        {
            req.setAttribute("msg", "Session Expired...<br>");
            req.getRequestDispatcher("MSG.jsp").forward(req, res);
        }
        else
        {
            String pcode = req.getParameter("pcode");
            String pname = req.getParameter("pname");
            int qty = Integer.parseInt(req.getParameter("qty"));
            float price = Float.parseFloat(req.getParameter("price"));
            float total = qty * price;

            OrderBean ob = new OrderBean();
            ob.setPcode(pcode);
            ob.setPname(pname);
            ob.setPrice(price);
            ob.setQty(qty);
            ob.setTotal(total);
            
            ArrayList<OrderBean> al = new OrderDAO().retrieve(ob);
          //  req.setAttribute("order", al);
            req.setAttribute("msg", "Order Sucess...");
            req.getRequestDispatcher("order.jsp").forward(req, res);
        }
    }
}
