package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewOrderDAO 
{
	public ArrayList<OrderBean>al=new ArrayList<OrderBean>();
	public ArrayList<OrderBean>view(){
		
		
		try {
			Connection con=DBConn.getConn();
			PreparedStatement pr=con.prepareStatement("select * from customerorder");
			ResultSet rs=pr.executeQuery();
			while(rs.next())
			{
				
				OrderBean ob=new  OrderBean();
					
				  ob.setPcode(rs.getString(1));
				  ob.setPname(rs.getString(2));
				  ob.setQty(rs.getInt(3));
				  ob.setPrice(rs.getFloat(4));
				  ob.setTotal(rs.getFloat(5));
				  al.add(ob);
				
				//product Bean to ArrayList Object
					
				
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return al;
	}
	

}
