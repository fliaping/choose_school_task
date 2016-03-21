package select.dao.impl;
import java.util.*;
import java.sql.*;
import select.vo.*;
import select.dao.*;
import select.dbc.*;
public class ProblemDAOImpl implements ProblemDAO
{
	//�޸Ĳ���
	public void update(Problem problem) throws Exception
	{
		String sql = "update problem set user_id=? where id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,problem.getUser_id());
			pstmt.setInt(2,problem.getId());
		    //�������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("�޸Ĳ��������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
	}
	//��Uer_id��ѯ����
	public Problem queryByUser_id(int user_id) throws Exception
	{
		Problem problem=null;
        String sql = "select id,ptitle,user_id from problem where user_id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,user_id);
		    //�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//��ѯ�����ݣ�֮�����ݸ�ֵ��person����
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
			throw new Exception("��user_id��ѯ���������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return problem;
	}
	//����Ŀid��ѯ
public Problem queryById(int id) throws Exception
	{
		Problem problem=null;
        String sql = "select id,ptitle,user_id,type,source,gist,goal from problem where id=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1,id);
		    //�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//��ѯ�����ݣ�֮�����ݸ�ֵ��person����
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
			throw new Exception("��user_id��ѯ���������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return problem;
	}

	//��ѯȫ��
	public List <Problem> queryAll() throws Exception
	{
		List <Problem> all= new ArrayList();
        String sql = "select id,ptitle,user_id from problem";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
		    //�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				//��ѯ�����ݣ�֮�����ݸ�ֵ��person����
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
			throw new Exception("��ѯȫ�����������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return all;
	}
}