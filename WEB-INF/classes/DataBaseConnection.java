package select.dbc;
import java.sql.*;


public class DataBaseConnection
{
	private final String DBDRIVER = "com.mysql.jdbc.Driver";
	private final String DBURL = "jdbc:mysql://localhost:3306/select";
    private final String DBUSER = "root";
	private final String DBPASSWORD = "mysql+-2014.185";
	private Connection conn = null;
	public DataBaseConnection()
	{
		try{
			Class.forName(DBDRIVER);
			this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
		}
		catch(Exception e)
		{
		}
	}
	//ȡ�����ݿ�����
	public Connection getConnection()
	{
		return this.conn;
	}
	//�ر����ݿ�����
	public void close()
	{
		try{
			this.conn.close();
		}
		catch(Exception e){

		}
	}


};