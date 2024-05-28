package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddCustomerDAO 
{
   public int k=0;
   public int insert (AddCustomerBean cb)
   {
	   try
	   { 
		   Connection con=DBConn.getConn();
		   PreparedStatement pr=con.prepareStatement("insert into Customer61 values(?,?,?,?,?,?,?)");
		   pr.setString(1, cb.getUname());
		   pr.setString(2, cb.getPass());
		   pr.setString(3,cb.getFname());
		   pr.setString(4, cb.getLname());
		   pr.setString(5,cb.getAddr());
		   pr.setString(6, cb.getMid());
		   pr.setLong(7,cb.getPhno());
		   k=pr.executeUpdate();
		
	  } 
	   catch (Exception e)
	   {
		e.printStackTrace();
	}
	   return k;
	   
   }
}
