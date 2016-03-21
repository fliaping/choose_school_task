package select.dao.impl;

import java.sql.*;
import java.util.*;
import select.vo.*;
import select.dbc.*; 
import select.dao.*;
//����������ݿ����
public class PersonDAOImpl implements PersonDAO
{
	//�û���½��֤
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
			throw new Exception("�û���֤�����쳣");
		}finally
		{
			dbc.close();
		}
		return flag;

	}
	//���Ӳ���
	public void insert(Person person) throws Exception
	{
		String sql = "insert into user(uid,password,name,rank,classes)values(?,?,?,?,?)";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,person.getUid());
			pstmt.setString(2,person.getPassword());
			pstmt.setString(3,person.getName());
			pstmt.setInt(4,person.getRank());
			pstmt.setString(5,person.getClasses());
		    //�������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("������������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
	}
	//�޸Ĳ���
	public void update(Person person) throws Exception
	{
		String sql = "update user set password=?,name=?,rank=?,classes=? where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(5,person.getUid());
			pstmt.setString(1,person.getPassword());
			pstmt.setString(2,person.getName());
			pstmt.setInt(3,person.getRank());
			pstmt.setString(4,person.getClasses());
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
	//ɾ������
	public void delete(String uid) throws Exception
	{
		String sql = "delete from user where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,uid);
		    //�������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch (Exception e)
		{
			throw new Exception("ɾ�����������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
	}
	//��UID��ѯ����
	public Person queryById(String uid) throws Exception
	{
		Person person=null;
        String sql = "select uid,password,name,rank,classes from user where uid=?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1,uid);
		    //�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				//��ѯ�����ݣ�֮�����ݸ�ֵ��person����
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
			throw new Exception("��ID��ѯ���������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return person;
	}
	//��ѯȫ��
	public List queryAll() throws Exception
	{
        List all= new ArrayList();
        String sql = "select uid,password,name,rank,classes from user";
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
			throw new Exception("��ѯȫ�����������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return all;
	}
	//ģ����ѯ
	public List queryByLike(String condition) throws Exception
	{
        List all= new ArrayList();
        String sql = "select uid,password,name,rank,classes from user where name like ? or classes like ?";
	    PreparedStatement pstmt = null;
		DataBaseConnection dbc=null;
		try
		{
			//�������ݿ�
			dbc=new DataBaseConnection();
			pstmt= dbc.getConnection().prepareStatement(sql);
		    //����ģ����ѯ����
			pstmt.setString(1,"%"+condition+"%");
			pstmt.setString(2,"%"+condition+"%");
			//�������ݿ��ѯ����
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				//��ѯ�����ݣ�֮�����ݸ�ֵ��person����
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
			throw new Exception("ģ����ѯ���������쳣");
		}
		finally
		{
			//�ر����ݿ�
			dbc.close();
		}
		return all;
	}
};