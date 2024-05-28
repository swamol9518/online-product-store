package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllProductsDAO
{

	public ArrayList<ProductBean>al=new ArrayList<ProductBean>();
	public ArrayList<ProductBean>retirve(){
		
		
		try {
			Connection con=DBConn.getConn();
			PreparedStatement pr=con.prepareStatement("select * from product61");
			ResultSet rs=pr.executeQuery();
			while(rs.next())
			{
				
					ProductBean pb=new  ProductBean();
					pb.setCode(rs.getString(1));
					pb.setName(rs.getString(2));
					pb.setPrice(rs.getFloat(3));
					pb.setQty(rs.getInt(4));
					al.add(pb); //product Bean to ArrayList Object
					
				
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return al;
	}
	
	
}
