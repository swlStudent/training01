package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DbUtil {
	
	static String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	static String URL="jdbc:sqlserver://localhost:1433;DatabaseName=lsw";
    static String username="sa";
    static String pwd="sa";
    
	public static void main(String[] args) {
		Connection con;
		Statement st;
		 ResultSet rs;
		 String sql="select * from std";
		
		try {
			Class.forName(driverClass);
			System.out.println("OJBK!连接成功");
			con=DriverManager.getConnection(URL, username, pwd);
			st=con.createStatement();
		    rs = st.executeQuery(sql);
		                    while (rs.next()) {
		                        String id = rs.getString("Sno");
		                        String name = rs.getString("Sname");
		                        String sex = rs.getString("Ssex");
		                       System.out.println("Sno:" + id + "\tSame:" + name + "\tSsex:" + sex);
		                    }
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
