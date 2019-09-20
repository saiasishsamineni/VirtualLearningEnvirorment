import java.sql.*;
public class VirtualLearningEnvirorment {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("oracle.jdbc.driver.OracleDriver");//Name of database which we are trying to connect 
		java.sql.Connection conn=null; //Creating Connection Object
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin"); //establishing connection using getConnection()
		if(conn!=null) // print wether connection is successful or not
		{
			System.out.println("Connection Succesfully established");
		}
		else
		{
			System.out.println("Connection Unsuccessfull");
		}
		conn.close();
		
		

	}

}
