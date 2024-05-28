package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
  public AddCustomerBean cb=null;
  public AddCustomerBean login(String uname,String pass)
  {
	  try {
		  Connection con=DBConn.getConn();
		  PreparedStatement pr=con.prepareStatement("select *  from Customer61 where uname=? and pword=?");
		  pr.setString(1, uname);
		  pr.setString(2, pass);
		  ResultSet rs=pr.executeQuery();
		  if(rs.next())
		  {
			  
			  cb=new AddCustomerBean();
			  cb.setUname(rs.getString(1));
			  cb.setPass(rs.getString(2));
			  cb.setFname(rs.getString(3));
			  cb.setLname(rs.getString(4));
			  cb.setAddr(rs.getString(5));
			  cb.setMid(rs.getString(6));
			  cb.setPhno(rs.getLong(7));
			  
			  
			  
		  }
		
	}
	  catch (Exception e)
	  {
		e.printStackTrace();
	}
	  
	return cb;
  }
	
	
}
