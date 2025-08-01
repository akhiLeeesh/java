package details;
import databaseconnection.*;
import java.sql.*;

public class  Details
{

static Connection con1=null;
static Statement st1=null;

static String[] res=new String[4];


public static String[] main(String pid) {
try{


System.out.println("------"+pid);
con1 = databasecon.getconnection();
st1 = con1.createStatement();
 String sql=null;;
sql="select * from register where email='"+pid+"'";
System.out.println(sql);
ResultSet rs=null;
rs=st1.executeQuery(sql);

while(rs.next())
{
//System.out.println(rs.getString("user"));
	res[0]=rs.getString("id");
	System.out.println(rs.getString("id"));
		res[1]=rs.getString("name");
			res[2]=rs.getString("city");
					res[3]=rs.getString("phone");
}
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		con1.close();
		st1.close();
//		rs.close();
		}
		catch(Exception e){
		System.out.println(e);
		}
	}
	return res;
}


	
	
	public static void main(String[] args) 
	{
		
String[] r=Details.main("sajid@in.com");
for(String rr:r)
		{
System.out.println(rr);
}



	}

}



