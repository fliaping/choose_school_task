package select.factory;
import select.dao.*;
import select.vo.*;
import select.dao.impl.*;

public class DAOFactory
{
	public static PersonDAO getPersonCRUD()
	{
		return new PersonDAOImpl(); 
	}
	public static ProblemDAO getProblemCRUD()
	{
		return new ProblemDAOImpl();
	}
};