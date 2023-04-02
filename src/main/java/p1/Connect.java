package p1;
import java.sql.*;
import java.util.ArrayList;
public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public Connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_epss","root","");  
			System.out.println("Connected..");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean saveRecord(String name, String email, String contact, String uid, String pwd)
	{
		boolean b = false;
		try {
			String sql = "insert into tbl_newuser(name,email,contact,uid,pwd) values(?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, contact);
			ps.setString(4, uid);
			ps.setString(5, pwd);
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	public boolean checkRecord(String uid, String pwd) {
		boolean b = false;
		try {
			String sql = "select * from tbl_newuser where uid=? and pwd=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, pwd);
			rs=ps.executeQuery();
			if(rs.next())
			{
				b = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	
	
	public boolean saveReceiverRecord(String tid, String accountnumber, String hname, String phonenumber, String email, String date, String amount, String uid)
	{
		boolean b = false;
		try {
			//System.out.println("key="+key);
			
			/*String sql = "insert into tbl_receiver_info(tid, accountnumber, hname, phonenumber, email, date, amount, skey) values(?,?,?,?,?,?,?,?)";*/
			String sql = "insert into tbl_receiver_info(tid, accountnumber, hname, phonenumber, email, date, amount, uid) values(?,?,?,?,?,?,?,?)";
			//String sql = "insert into tbl_receiver_info(skey,tid) values(?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, tid);
			ps.setString(2, accountnumber);
			ps.setString(3, hname);
			ps.setString(4, phonenumber);
			ps.setString(5, email);
			ps.setString(6, date);
			ps.setString(7, amount);
			ps.setString(8, uid);
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}	
	public ArrayList<ReceiverInfo> getReciverData(String uid)
	{
		ArrayList<ReceiverInfo> arr=new ArrayList<ReceiverInfo>();
		try {
		String sql="SELECT * FROM tbl_receiver_info where uid=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, uid);
		rs=ps.executeQuery();
		while(rs.next())
		{
			ReceiverInfo obj=new ReceiverInfo();
			obj.setTid(rs.getString(1));
			obj.setAccountnumber(rs.getString(2));
			obj.setHname(rs.getString(3));
			obj.setPhonenumber(rs.getString(4));
			obj.setEmail(rs.getString(5));
			obj.setDate(rs.getString(6));
			obj.setAmount(rs.getString(7));
			arr.add(obj);
			
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;
	}
	
	
	
	public UserInfo getRecord(String uid) {
		
		UserInfo obj=new UserInfo();
		try {
			String sql = "select t1.name, t1.email, t1.contact, t2.accno from tbl_newuser t1, tbl_user_info t2 where t1.uid=? and t1.uid=t2.uid";
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			rs=ps.executeQuery();
			if(rs.next())
			{
				System.out.println(rs.getString(1));
				obj.setUname(rs.getString(1));
				obj.setEmail(rs.getString(2));
				obj.setContact(rs.getString(3));
				obj.setAccno(rs.getString(4));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	
	public boolean saveDetails(String accno, String cno, String ifsc, String uid)
	{
		boolean b = false;
		try {
			String sql = "insert into tbl_user_info(accno,cno,ifsc,uid) values(?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, accno);
			ps.setString(2, cno);
			ps.setString(3, ifsc);
			ps.setString(4, uid);
			
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	
	
	public boolean updateDetails(String accno, String cno, String ifsc, String uid)
	{
		boolean b = false;
		try {
			String sql = "update tbl_user_info set accno=?, cno=?, ifsc=? where uid=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, accno);
			ps.setString(2, cno);
			ps.setString(3, ifsc);
			ps.setString(4, uid);
			
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	public String getKeyDB(String tid) 
	{
		String key=null;
		String sql = "select skey from tbl_receiver_info where tid=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, tid);
			rs=ps.executeQuery();
			if(rs.next())
			{
				key=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return key;
		
		
	}
	
	
public boolean saveContactUsDetails(String sname, String email, String msg) {
	 boolean b = false; 
	 try { 
		 String sql = "insert into tbl_contactus_info(sname,email,msg) values(?,?,?)";
		 ps=con.prepareStatement(sql); 
		 ps.setString(1, sname); 
		 ps.setString(2, email);
		 ps.setString(3, msg);
	 
	 int n = ps.executeUpdate(); 
	 if(n>0) 
		 b=true; 
	 }catch(Exception e){
		 e.printStackTrace();
		 } 
	 return b;
	  
	  }
	 
	
	
	
	

}
