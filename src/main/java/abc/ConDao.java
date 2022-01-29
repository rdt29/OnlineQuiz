package abc;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;



import java.sql.*;



public class ConDao {
	
	public static Connection getConnection()
	{
		Connection con = null;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Exam","root","R@jdeep9981");
			
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		
		return con;
	}
	
	public static int Add_Teacher(beanclass u)
	{
		int status = 0;
		
		try
		{
			Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("insert into Teacher values (?,?,?)");	

		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getName());
		
		 status  = ps.executeUpdate();
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
		
	}
	
	
	public static int Add_Student(beanclass u)
	{
		int status = 0;
		
		try
		{
			Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("insert into Student values (?,?,?)");	

		ps.setString(1, u.getRollno());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getName());
		
		 status  = ps.executeUpdate();
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
		
	}
	
	public static int Student_login(beanclass u)
	{
		int status = 0;
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from Student where S_user = ? && password = ?");
			ps.setString(1, u.getRollno());
			ps.setString(2, u.getPassword());
			
			ResultSet r = ps.executeQuery();
			
			if(r.next())
			{
				return status = 1;
	
			}
	}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
	}
	
	
	
	public static String Student_login_name(beanclass u)
	{
		String name=null;
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from Student where S_user = ?");
			ps.setString(1, u.getRollno());
			
			
			ResultSet r = ps.executeQuery();
			 while (r.next()) {
	               name	 = r.getString("name");
	               
	                
	               
			
			
	}
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		 return name;
		
	}
	
	
	
	
	
	
	
	
	
	
	public static int Teacher_login(beanclass u)
	{
		int status = 0;
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from teacher where t_user = ? && password = ?");
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			
			ResultSet r = ps.executeQuery();
			
			if(r.next())
			{
				return status = 1;
	
			}
	}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return status;
		
	}
	
	
	
	public static String Teacher_login_name(beanclass u)
	{
		String name=null;
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from teacher where t_user = ?");
			ps.setString(1, u.getEmail());
			
			
			ResultSet r = ps.executeQuery();
			 while (r.next()) {
	               name	 = r.getString("name");
	                
	               
			
			
	}
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		 return name;
		
	}
	
	
	
	public static int AddQue1(Question u)
	{
		int status=0;
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into Question values (?, ?, ?, ?, ?, ?, ?, ?,?)");
			ps.setString(1, u.getSubjectcode());
			ps.setString(2, u.getSubjectname());
			ps.setString(3, u.getQ1());
			ps.setString(4, u.getA());
			ps.setString(5, u.getB());
			ps.setString(6, u.getC());
			ps.setString(7, u.getD());
			ps.setString(8, u.getAnswer());
			ps.setString(9, u.getInsertby());
			
			status = ps.executeUpdate();
			
		}
		catch(Exception Exe)
		{
			System.out.print(Exe);
			
		}
		return status;
		
	}
	
	
	
	
	public static List<Question> Viewquebymail(Question i)
	{
		List <Question> list = new ArrayList<Question>();
		
		
		
		try
		{
			Connection con = ConDao.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM question WHERE insertedby=?");
			
		
			
			
			ps.setString(1, i.getViewmail());
			
	
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				
				Question q = new Question();
				
				q.setSubjectcode(rs.getString(1));
				q.setSubjectname(rs.getString(2));
				q.setQ1(rs.getString(3));
				q.setA(rs.getString(4));
				q.setB(rs.getString(5));
				q.setC(rs.getString(6));
				q.setD(rs.getString(7));
				q.setAnswer(rs.getString(8));
				
				list.add(q);
				
				
			}
			
			con.close();
			
		}
		catch(Exception exe)
		{
			System.out.print(exe);
		}
		return list;
	}


}
