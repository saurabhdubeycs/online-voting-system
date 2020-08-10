package admin;
import java.sql.*;

import connection.MasterConnect;
public class Action extends MasterConnect 
{


	PreparedStatement ps;
	ResultSet rs;
	
	private String user_name;
	private String password;
	private String status;
	
	public boolean voterlogin(String user_name,String pass ,String status)
	{
		String sql;
		try
		{
			
			sql= "SELECT*FROM  `voter` WHERE user_name=? and password=? and status=?";
			System.out.println( sql+" "+user_name+" "+pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, user_name);
			ps.setString(2, pass);
			ps.setString(3, status);
			rs=ps.executeQuery();
			if(rs.next())
			{
				return true;
				
			}
			else
			{
				
				return false;
			}
			
		}
		catch(Exception Ex)
		{
			System.out.println(Ex);
			return false;
		}
	}
	
	public boolean adminlogin(String user_name,String pass)
	{
		String sql;
		try
		{
			
			sql= "SELECT*FROM  `admin` WHERE user_name=? and password=?";
			System.out.println( sql+" "+user_name+" "+pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, user_name);
			ps.setString(2, pass);
			rs=ps.executeQuery();
			if(rs.next())
			{
				return true;
				
			}
			else
			{
				
				return false;
			}
			
		}
		catch(Exception Ex)
		{
			System.out.println(Ex);
			return false;
		}
	}
	
	
	public boolean insert(String table,String fields,String values)
	{
		
		String sql = " INSERT INTO " + table + " " + fields + " VALUES "+ values;
		System.out.println(sql);
		try
		{
			
			ps=con.prepareStatement(sql);
			int i= ps.executeUpdate();
			
			if(i>0)
			{
				return true;
				
				
			}
			else
			{
				return false;
			}
		}catch(Exception ex)
		{
			System.out.println("Exception ="+ex);
		}
		return false;
	}	
	
	public ResultSet selectall(String tbname)
	{
		String sql=" SELECT * FROM " +tbname;
		System.out.println(sql);
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
				
			
				return rs;
			
		}catch(Exception ex)
		{
			System.out.println("Exception ="+ex);
			return rs;
		}
	}
	public ResultSet selectall(String tbname,String condi,String fields)
	{
		String sql=" SELECT  " +fields+ "  FROM " +tbname+ " "+condi+ "";
		System.out.println(sql);
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			return rs;
		}
		catch(Exception ex)
		{
			
			System.out.println("Exception ="+ex);
			return rs;
		}
	}
	
	public boolean updatedata(String tbname,String condi,String fields)
	{
		String sql=" UPDATE "+tbname+" SET "+fields+" "+condi+"";
		System.out.println(sql);
		try
		{
			ps=con.prepareStatement(sql);
			int rs=ps.executeUpdate();
			return true;
		}
		catch(Exception ex)
		{
			System.out.println("Exception="+ex);
			return false;
		}
	}
	public boolean deleterecord(String tbname,String condi)
	{
		String sql="DELETE  FROM "+tbname+"  "+condi+"";
		System.out.println(sql);
		try
		{
			ps=con.prepareStatement(sql);
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
				
			}
			else
			{
				return false;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Exception ="+ex);
		}
		return false;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPassword() {
		return password;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}
	
	
}
