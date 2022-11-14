import java.sql.*;
import java.util.*;

public class Table_Insert {

	public static void insert() {
		try{
            String URL = "jdbc:oracle:thin:@192.168.0.26:1521:xe";
            String USER ="petdo";
            String PASS = "petdo";
            
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(URL, USER , PASS);	
			
			String sql = "CREATE TABLE Product( "
                +"product_number    number primary key,"
                +"category_code     varchar2(30),"
                +"product_name      varchar2(50),"
                +"product_price     number, "
                +"product_stock     number, "
                +"product_desc      varchar2(1024), "
                +"product_date      date, "
                +"product_hits      number "
             +")";
			
			//***************************************************************
			
			PreparedStatement stmt = con.prepareStatement( sql );	
            stmt.executeUpdate();

			stmt.close();
			con.close();
		} catch(Exception ex){
			System.out.println("에러 : " + ex.getMessage() );
		}
	}

    public static void main(String[] args) {
        insert();
    }
}
