package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class productDAO {
    Connection conn; //데이터베이스 연결
    PreparedStatement stat; //상태값 초기화
    ResultSet rs; //결과값 초기화

    // 클래스가 실행될때 무조건 함께 실행되는 생성자 생성
    // 서블릿이 없는 DB 연결 코드
    public productDAO(){
        try {
            InputStream in = (this.getClass().getResourceAsStream("../../db.properties"));
            Properties p = new Properties();
            p.load(in);

            String dburl = p.getProperty("dburl");
            String dbid = p.getProperty("dbid");
            String dbpw = p.getProperty("dbpw");
            Class.forName("dbclass");
            conn = DriverManager.getConnection(dburl, dbid, dbpw);
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
    }

    // 제품 조회 함수
    public ArrayList<productVO> getList() throws IOException{
        String SQL = "SELECT * FROM product WHERE productID>0";

        ArrayList<productVO> list = new ArrayList<productVO>();

        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);

            rs = pstmt.executeQuery();

        } catch (Exception e) {
            
        }
        return list;
    }

    // 제품 등록 함수
    public int productWrite(int productID, String Oid, int productNumber, String productName) throws IOException {
        String SQL = "INSERT INTO product VALUES (?, ?, ?, ?)";
        
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);

            pstmt.setInt(0, productID);
            pstmt.setString(1, Oid);
            pstmt.setInt(2, productNumber);
            pstmt.setString(3, productName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    
}