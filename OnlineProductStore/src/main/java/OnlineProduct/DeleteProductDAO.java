package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class DeleteProductDAO 
{
   public ProductBean pb=null;
   public ProductBean delete(String pcode)
   {
	   try {
		
		   Connection con=DBConn.getConn();
		   PreparedStatement pr=con.prepareStatement("delete from product61 where code=?");
		   pr.setString(1, pcode);
		   pr.executeQuery();
		   
	} 
	   catch (Exception e)
	   {
		e.printStackTrace();
	}
	   return pb;
   }
}
