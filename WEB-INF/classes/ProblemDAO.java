package select.dao;
import java.util.*;
import select.vo.*;
public interface ProblemDAO
{
	//修改操作
	public void update(Problem problem) throws Exception;
	//按Uer_id查询操作
	public Problem queryByUser_id(int user_id) throws Exception;
	public Problem queryById(int id) throws Exception;
	//查询全部
	public List <Problem> queryAll() throws Exception;
	
}