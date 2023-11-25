 package userlogin;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class UserLoginDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		boolean isSuccess = false;
		
		try {
			
			
		} catch (Exception e) {
		
		
		
		
		}
		return isSuccess;
	}
	//display user details
	/*public static List<User> validate(String username, String password){
		
		ArrayList<User> use = new ArrayList<>();
		

		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from userdetails where username = '"+username+"' and password = '"+password+"' ";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int uid = rs.getInt(1);
				String userName = rs.getString(2);
				String firstname = rs.getString(3);
				String lastname = rs.getString(4);
				int telephone = rs.getInt(5);
				String email = rs.getString(6);
				String gender = rs.getString(7);
				String nic = rs.getString(8);
				String address = rs.getString(9);
				String passWord = rs.getString(10);
				
				User u = new User(uid,userName,firstname,lastname,telephone,email,gender,nic,address,passWord);
				use.add(u);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return use;
	}*/
	
	//insert data into userdetails database
		public static boolean inserstuser(String username,String firstname, String lastname, String telephone, String email, String gender, String nic, String address, String password) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into userdetails values (0,'"+username+"','"+firstname+"','"+lastname+"','"+telephone+"','"+email+"','"+gender+"','"+nic+"','"+address+"','"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
		
		
	//insert data into ticket database
		
		public static boolean inserstticket(String title,String email, String department, String priority, String problem, String phone, String name) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into ticketdetails values (0,'"+title+"','"+email+"','"+department+"','"+priority+"','"+problem+"','"+phone+"','"+name+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
			//display ticket
			public static List<ticket> validate2(String username, String email){
				
				ArrayList<ticket> tkt = new ArrayList<>();
				
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from ticketdetails where username = '"+username+"' and email = '"+email+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int tid = rs.getInt(1);
					String title = rs.getString(2);
					String email2 = rs.getString(3);
					String department = rs.getString(4);
					String priority = rs.getString(5);
					String problem = rs.getString(6);
					int phone = rs.getInt(7);
					String username2  = rs.getString(8);
					
					
					
					ticket t = new ticket(tid,title,email2,department,priority,problem,phone,username2);
					tkt.add(t);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return tkt;
			
		}
			
			//update profile
			
			
			public static boolean updateuser(String username, String firstname, String telephone, String email, String address) {
				
				
				boolean isSuccess = false;
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "update userdetails set username='"+username+"', firstname='"+firstname+"', telephone='"+telephone+"', email='"+email+"', address='"+address+"' "
							+"where username='"+username+"'"; 
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
						
					} else {
						isSuccess = false;
					}
					
					
					} catch(Exception e) {
					e.printStackTrace();
				}
				
				
				return isSuccess;
				
			}
			
			//retrieve user details
			
			public static List<User> getUserDetails(String username){
				
				ArrayList<User> user = new ArrayList<>();
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "select * from userdetails where username='"+username+"'";
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int uid = rs.getInt(1);
						String username2 = rs.getString(2);
						String firstname = rs.getString(3);
						String lastname = rs.getString(4);
						int telephone = rs.getInt(5);
						String email = rs.getString(6);
						String gender = rs.getString(7);
						String nic = rs.getString(8);
						String address = rs.getString(9);
						String password = rs.getString(10);
						
						User u = new User (uid, username2, firstname, lastname, telephone, email, gender, nic, address, password);
						user.add(u);
						
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				
				return user;
	 		}
			
			//delete data from database
			
			
			public static boolean deleteUser(String username) {
				boolean isSuccess = false;
				
				//int conUser = Integer.parseInt(username);
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "delete from userdetails where username='"+username+"'";
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
						
					} else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
				
			}
}







