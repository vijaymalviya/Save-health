import java.sql.*;


public class connection {
	public static void main(String[] args) {
		try
	     {
	     	Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_store","root","");
			System.out.println("Connected to database.");
			/*stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	        rs = stmt.executeQuery("SELECT * from supplier" );
	          while(rs.next())
	            {
	            	model.insertRow(r++, new Object[]{rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5) });
	            }
	              con.close();*/
	      }
	       catch(SQLException se)
	       {
	       	  System.out.println(se);
	           
	       }
	      catch(Exception e)
	       {
	       	   System.out.println(e);
	          
	       }
	}

}
