package select.dao;

import java.util.*;
import select.vo.*;
public interface PersonDAO
{
	//增加操作
	public void insert(Person person) throws Exception;
	//修改操作
	public void update(Person person) throws Exception;
	//删除操作
	public void delete(String uid) throws Exception;
	//按ID查询操作
	public Person queryById(String uid) throws Exception;
	//查询全部
	public List queryAll() throws Exception;
	//模糊查询
	public List queryByLike(String condition) throws Exception;
	//用户验证
	public boolean logincheck(String uid,String password)throws Exception;
};