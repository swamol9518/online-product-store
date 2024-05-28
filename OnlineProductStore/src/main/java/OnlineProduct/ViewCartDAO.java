package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewCartDAO 
{
	public ArrayList<CartBean>al=new ArrayList<CartBean>();
	public ArrayList<CartBean>retrive()
	{  
		try
		{
		  Connection con=DBConn.getConn();
		  PreparedStatement pr=con.prepareStatement("select * from CustomerCart");
		  ResultSet rs=pr.executeQuery();
		  while(rs.next())
		  {
			  CartBean cb=new CartBean();
			  cb.setPcode(rs.getString(1));
			  cb.setPname(rs.getString(2));
			  cb.setPrice(rs.getFloat(3));
			  cb.setQty(rs.getInt(4));
			  
			  al.add(cb);
		  }
	   } 
		
	catch (Exception e) 
	{
		
	}
	
		return al;
	}
  
}
