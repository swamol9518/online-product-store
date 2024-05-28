package OnlineProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
  public AdminBean ab=null;
  public AdminBean login(String uname,String pass)
  {
	  try {
		  Connection con=DBConn.getConn();
		  PreparedStatement pr=con.prepareStatement("select *  from admin60 where uname=? and pword=?");
		  pr.setString(1, uname);
		  pr.setString(2, pass);
		  ResultSet rs=pr.executeQuery();
		  if(rs.next())
		  {
			  
			  ab=new AdminBean();
			  ab.setUname(rs.getString(1));
			  ab.setPword(rs.getString(2));
			  ab.setFname(rs.getString(3));
			  ab.setLname(rs.getString(4));
			  ab.setAddr(rs.getString(5));
			  ab.setMid(rs.getString(6));
			  ab.setPhno(rs.getLong(7));
			  
			  
		  }
		
	}
	  catch (Exception e)
	  {
		e.printStackTrace();
	}
	  
	return ab;
  }
	
	
}
