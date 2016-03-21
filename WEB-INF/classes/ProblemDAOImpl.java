package select.dao.impl;
import java.util.*;
import java.sql.*;
import select.vo.*;
import select.dao.*;
import select.dbc.*;
public class ProblemDAOImpl implements ProblemDAO
{
	//修改操作
	public void update(Problem problem) throws Exception
	{
		String sql = "update problem set user_id=? where id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,problem.getUser_id());
			pstmt.setInt(2,problem.getId());
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
	//按Uer_id查询操作
	public Problem queryByUser_id(int user_id) throws Exception
	{
		Problem problem=null;
        String sql = "select id,ptitle,user_id from problem where user_id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,user_id);
		    //进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//查询出内容，之后将内容赋值给person对象
				problem=new Problem();
				problem.setId(rs.getInt("id"));
				problem.setPtitle(rs.getString("ptitle"));
				problem.setUser_id(rs.getInt("user_id"));
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("按user_id查询操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
		return problem;
	}
	//按题目id查询
public Problem queryById(int id) throws Exception
	{
		Problem problem=null;
        String sql = "select id,ptitle,user_id,type,source,gist,goal from problem where id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//连接数据库
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,id);
		    //进行数据库查询操作
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//查询出内容，之后将内容赋值给person对象
				problem=new Problem();
				problem.setId(rs.getInt("id"));
				problem.setPtitle(rs.getString("ptitle"));
				problem.setUser_id(rs.getInt("user_id"));
				problem.setType(rs.getString("type"));
				problem.setSource(rs.getString("source"));
				problem.setGist(rs.getString("gist"));
				problem.setGoal(rs.getString("goal"));
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("按user_id查询操作出现异常");
		}
		finally
		{
			//关闭数据库
			dbc.close();
		}
		return problem;
	}

	//查询全部
	public List <Problem> queryAll() throws Exception
	{
		List <Problem> all= new ArrayList();
        String sql = "select id,ptitle,user_id from problem";
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
				Problem problem=new Problem();
				problem.setId(rs.getInt("id"));
				problem.setPtitle(rs.getString("ptitle"));
				problem.setUser_id(rs.getInt("user_id"));
                all.add(problem);
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
}