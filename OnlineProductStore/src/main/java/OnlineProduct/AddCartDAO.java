package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddCartDAO 
{
	
   Connection con=null;
   public int k=0;
   public int insert ( CartBean cb)
   {  try
   {
	   
	  con=DBConn.getConn();
	  PreparedStatement pr=con.prepareStatement("insert into  CustomerCart values(?,?,?,?)");
	  pr.setString(1, cb.getPcode());
	  pr.setString(2, cb.getPname());
	  pr.setFloat(3, cb.getPrice());
	  pr.setInt(4, cb.getQty());
	  k=pr.executeUpdate();
   } catch(Exception e)
   {
	   e.printStackTrace();
   }
	   return k;
   }
   
}
