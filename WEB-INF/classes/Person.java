package select.vo;

public class Person
{
	private String uid;
	private String name;
	private String password;
	private String classes;
	private int rank;

	//生成getter、setter方法
	public void setUid(String uid)
	{
		this.uid=uid;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public void setClasses(String classes)
	{
		this.classes=classes;
	}
	public void setRank(int rank)
	{
		this.rank=rank;
	}
	public String getUid()
	{
		return this.uid;
	}
	public String getPassword()
	{
		return this.password;
	}
	public String getName()
	{
		return this.name;
	}
	public String getClasses()
	{
		return this.classes;
	}
	public int getRank()
	{
		return this.rank;
	}
};