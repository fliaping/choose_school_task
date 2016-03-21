package select.vo;
public class Problem
{
	private int id;
	private String ptitle;
	private int user_id;
	private String type;
	private String source;
	private String gist;
	private String goal;
	
	//生成getter、setter方法
	public void setId(int id)
	{
		this.id=id;
	}
	public void setPtitle(String ptitle)
	{
		this.ptitle=ptitle;
	}
	public void setUser_id(int user_id)
	{
		this.user_id=user_id;
	}
	public void setType(String type)
	{
		this.type=type;
	}
	public void setSource(String source)
	{
		this.source=source;
	}
	public void setGist(String gist)
	{
		this.gist=gist;
	}
	public void setGoal(String goal)
	{
		this.goal=goal;
	}
	//get方法
	public int getId()
	{
		return this.id;
	}
	public int getUser_id()
	{
		return this.user_id;
	}
	public String getPtitle()
	{
		return this.ptitle;
	}
	public String getPtype()
	{
		return this.type;
	}
	public String getSource()
	{
		return this.source;
	}
	public String getGist()
	{
		return this.gist;
	}
	public String getGoal()
	{
		return this.goal;
	}
};