package OnlineProduct;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn
{

	private static final String url="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String uname="abc";
	private static final String pass="123";
	private static  Connection con=null;
	
	static
	{
		
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(url,uname,pass);
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getConn()
	{
		return con;
	}
		
	
}
