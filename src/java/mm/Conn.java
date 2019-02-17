/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mm;

/**
 *
 * @author Administrator
 */
import java.sql.*;

public class  Conn
{

private Connection con;
private Statement st;
public Conn() 
	{
	try{
	       Class.forName("com.mysql.jdbc.Driver").newInstance();
               con = DriverManager.getConnection("jdbc:mysql:///music", "root", "");
	       st=con.createStatement();

		System.out.println("connected Conn ");
		}
	catch(Exception e){
		System.out.println("Sorry Error Conn"+e);
		}
	}

public ResultSet executeQuery(String sql) throws SQLException
	{
	return st.executeQuery(sql);
	}
public int executeUpdate(String sql) throws SQLException
	{
	return st.executeUpdate(sql);
	}
}
