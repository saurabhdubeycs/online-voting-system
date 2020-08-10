package connection;

import java.sql.*;

public class MasterConnect {
	
public static Connection con;
public String db_name= "evoting_system";
public MasterConnect()
{
con=getConnection();
if(con!=null)
{
	System.out.print("Connection is okk");
}
else
{
	System.out.print("not  okk");
}
}
public Connection  getConnection()
{
	Connection connect=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db_name + "", "root", "");
	}
	catch(Exception ex)
	{
		
		System.out.println("exception="+ex);
	}
	return connect;
}

}
