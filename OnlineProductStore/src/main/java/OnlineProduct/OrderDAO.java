package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class OrderDAO 

    {
	  ArrayList<OrderBean> al=new ArrayList<OrderBean>();
	
	public ArrayList<OrderBean>retrieve(OrderBean ob)
	{
		try {
           // OrderBean ob=new OrderBean();
			Connection con=DBConn.getConn();
			PreparedStatement pr=con.prepareStatement("insert into customerorder values (?,?,?,?,?)");
			pr.setString(1, ob.getPcode());
			pr.setString(2, ob.getPname());
			pr.setInt(3, ob.getQty());
			pr.setFloat(4, ob.getPrice());
			pr.setFloat(5, ob.getTotal());
			pr.executeUpdate();
			al.add(ob);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return al;
		
	}

}
