package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
  public int k=0;
  public int insert(ProductBean pb)
  { 
	  
	  try {
		Connection con=DBConn.getConn();
		PreparedStatement pr=con.prepareStatement("insert into product61 values(?,?,?,?)");
		pr.setString(1, pb.getCode());
		pr.setString(2,pb.getName());
		pr.setFloat(3, pb.getPrice());
		pr.setInt(4, pb.getQty());
		k=pr.executeUpdate();
	} 
	  catch (Exception e)
	  {
		e.printStackTrace();
	}
	  return k;
	  
  }
}
