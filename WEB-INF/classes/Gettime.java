package select.factory;
import java.util.*; 
import java.text.*;
//����������Calendar����ʵ������ʱ��ģ���Date����ȽϱȽϼ�

public class Gettime { 
      public static Calendar ca = Calendar.getInstance();
      public static int year = ca.get(Calendar.YEAR);//��ȡ���
      public static int month=ca.get(Calendar.MONTH)+1;//��ȡ�·� 
      public static int day=ca.get(Calendar.DATE);//��ȡ��
      public static int minute=ca.get(Calendar.MINUTE);//�� 
      public static int hour=ca.get(Calendar.HOUR_OF_DAY);//24Сʱ���� Calendar.HOUR//12Сʱ����
      public static int second=ca.get(Calendar.SECOND);//��
      public static int dayofweek = ca.get(Calendar.DAY_OF_WEEK); //һ�ܵĵڼ���
      
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
          SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
          return df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
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