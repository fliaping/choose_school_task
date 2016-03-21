package select.factory;
import java.util.*; 
import java.text.*;
//以下是利用Calendar类来实现日期时间的，和Date类相比较比较简单

public class Gettime { 
      public static Calendar ca = Calendar.getInstance();
      public static int year = ca.get(Calendar.YEAR);//获取年份
      public static int month=ca.get(Calendar.MONTH)+1;//获取月份 
      public static int day=ca.get(Calendar.DATE);//获取日
      public static int minute=ca.get(Calendar.MINUTE);//分 
      public static int hour=ca.get(Calendar.HOUR_OF_DAY);//24小时机制 Calendar.HOUR//12小时机制
      public static int second=ca.get(Calendar.SECOND);//秒
      public static int dayofweek = ca.get(Calendar.DAY_OF_WEEK); //一周的第几天
      
      public static String thistime()
	  {
		  String Year=String.valueOf(year);
		  String Month=String.valueOf(month);
		  String Day=String.valueOf(day);
		  String Hour=String.valueOf(hour);
		  String Minute=String.valueOf(minute);
		  String Second=String.valueOf(second);
		  return Year+"_"+Month+"_"+Day+"_"+Hour+"_"+Minute+"_"+Second;
	  }
          public static String Gettime() { 
          SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
          return df.format(new Date());// new Date()为获取当前系统时间
      }
	  public static boolean isTime()
	{
	    
		String start ="2014-12-7 13:00:00";
		String end ="2014-12-10 00:00:00";
		long s1 = 0;
		long s2 = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		try {
		  Date d1 = sdf.parse(start);
          Date d2 = sdf.parse(end);		  
		  s1=d1.getTime(); 
		  s2=d2.getTime();
		  } catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		  Date now = new Date();
		
		long s3 =now.getTime() ;
		if(s3>s1&&s3<s2){
			return true;
		}else{
		 return false;
		}

	}

}