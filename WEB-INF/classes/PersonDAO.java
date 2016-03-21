package select.dao;

import java.util.*;
import select.vo.*;
public interface PersonDAO
{
	//���Ӳ���
	public void insert(Person person) throws Exception;
	//�޸Ĳ���
	public void update(Person person) throws Exception;
	//ɾ������
	public void delete(String uid) throws Exception;
	//��ID��ѯ����
	public Person queryById(String uid) throws Exception;
	//��ѯȫ��
	public List queryAll() throws Exception;
	//ģ����ѯ
	public List queryByLike(String condition) throws Exception;
	//�û���֤
	public boolean logincheck(String uid,String password)throws Exception;
};