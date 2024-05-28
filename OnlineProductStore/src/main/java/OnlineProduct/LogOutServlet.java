package OnlineProduct;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogOutServlet  extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
	{
		
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired..<br>");
			
		}
		else
		{
			hs.removeAttribute("abean");
			hs.invalidate(); //destroying session
			req.setAttribute("msg", "Log Out Sucessfully");
		}
		req.getRequestDispatcher("MSG.jsp").forward(req, res);
	}

}
