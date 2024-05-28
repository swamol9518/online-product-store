package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpadateProductDAO 
{
    public int k=0;
    public int update(ProductBean pb)
    {
    	try {
    		Connection con=DBConn.getConn();
    		PreparedStatement pr=con.prepareStatement("update product61 set price=?,qty=? where code=?");
    		pr.setFloat(1, pb.getPrice());
    		pr.setInt(2, pb.getQty());
    		pr.setString(3, pb.getCode());
    		k=pr.executeUpdate();
			
		} 
    	catch (Exception e)
    	{
			e.printStackTrace();
		}
    	return k;
    }
}
