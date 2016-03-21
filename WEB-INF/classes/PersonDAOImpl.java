package select.dao.impl;

import java.sql.*;
import java.util.*;
import select.vo.*;
import select.dbc.*; 
import select.dao.*;
//此类完成数据库操作
public class PersonDAOImpl implements PersonDAO
{
	//用户登陆验证
	public boolean logincheck(String uid,String password)throws Exception
	{
		
		String sql="select id from user where uid=? and password=?";
		boolean flag= false;
		PreparedStatement pstmt=null;
		DataBaseConnection dbc=null;
		try
		{
			dbc= new DataBaseConnection();
			pstmt=dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,uid);
			pstmt.setString(2,password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				flag=true;
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("用户验证出现异常");
		}finally
		{
			dbc.close();
		}
		return flag;

	}
	//增加操作
	public void insert(Person person) throws Exception
	{
		String sql = "insert into user(uid,password,name,rank,classes)values(?,?,?,?,?)";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,person.getUid());
			pstmt.setString(2,person.getPassword());
			pstmt.setString(3,person.getName());
			pstmt.setInt(4,person.getRank());
			pstmt.setString(5,person.getClasses());
		    //进行数据库更新操作
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("插入操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
	}
	//修改操作
	public void update(Person person) throws Exception
	{
		String sql = "update user set password=?,name=?,rank=?,classes=? where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(5,person.getUid());
			pstmt.setString(1,person.getPassword());
			pstmt.setString(2,person.getName());
			pstmt.setInt(3,person.getRank());
			pstmt.setString(4,person.getClasses());
		    //进行数据库更新操作
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("修改操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
	}
	//删除操作
	public void delete(String uid) throws Exception
	{
		String sql = "delete from user where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,uid);
		    //进行数据库更新操作
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("删除操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
	}
	//按UID查询操作
	public Person queryById(String uid) throws Exception
	{
		Person person=null;
        String sql = "select uid,password,name,rank,classes from user where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,uid);
		    //进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//查询出内容，之后将内容赋值给person对象
				person=new Person();
				person.setUid(rs.getString("uid"));
				person.setPassword(rs.getString("password"));
				person.setName(rs.getString("name"));
				person.setRank(rs.getInt("rank"));
				person.setClasses(rs.getString("classes"));

			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("按ID查询操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
		return person;
	}
	//查询全部
	public List queryAll() throws Exception
	{
        List all= new ArrayList();
        String sql = "select uid,password,name,rank,classes from user";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
		    //进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				//查询出内容，之后将内容赋值给person对象
				Person person=new Person();
				person.setUid(rs.getString("uid"));
				person.setPassword(rs.getString("password"));
				person.setName(rs.getString("name"));
				person.setRank(rs.getInt("rank"));
				person.setClasses(rs.getString("classes"));
                all.add(person);
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("查询全部操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
		return all;
	}
	//模糊查询
	public List queryByLike(String condition) throws Exception
	{
        List all= new ArrayList();
        String sql = "select uid,password,name,rank,classes from user where name like ? or classes like ?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
		    //设置模糊查询条件
			pstmt.setString(1,"%"+condition+"%");
			pstmt.setString(2,"%"+condition+"%");
			//进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				//查询出内容，之后将内容赋值给person对象
				Person person=new Person();
				person.setUid(rs.getString("uid"));
				person.setPassword(rs.getString("password"));
				person.setName(rs.getString("name"));
				person.setRank(rs.getInt("rank"));
				person.setClasses(rs.getString("classes"));
                all.add(person);
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("模糊查询操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
		return all;
	}
};