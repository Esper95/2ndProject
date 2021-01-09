package conn.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dataDAO {
	
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	
	//DB ¿¬°á
		public void conn(){
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
				String db_id = "hr";
				String db_pw = "hr";
				conn = DriverManager.getConnection(db_url, db_id, db_pw);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		//DB ´ÝÀ½
		public void close() {
			try {
				if(rs != null) {
					rs.close();
				}
				if(psmt!= null) {
					psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		public int kakaodata(dataDTO dto) {
			conn();
		
			try {
				String sql = "insert into kakaodata values(?,?,?,?,?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPartner());
				psmt.setString(3, dto.getTerm());
				psmt.setString(4, dto.getConv_count1());
				psmt.setString(5, dto.getConv_count2());
				psmt.setString(6, dto.getMorn_count1());
				psmt.setString(7, dto.getMorn_count2());
				psmt.setString(8, dto.getNight_count1());
				psmt.setString(9, dto.getNight_count2());
				psmt.setString(10, dto.getKikicount());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;
		}
		
		public int emotion(dataDTO dto) {
			conn();
		
			try {
				String sql = "insert into emotion values(?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPartner());
				psmt.setString(3, dto.getWorry());
				psmt.setString(4, dto.getAngry());
				psmt.setString(5, dto.getSad());
				psmt.setString(6, dto.getHappy());
				
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;
		}
		
		public int keyword(dataDTO dto) {
			conn();
		
			try {
				String sql = "insert into keyword values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPartner());
				psmt.setString(3, dto.getWorry1());
				psmt.setString(4, dto.getWorry2());
				psmt.setString(5, dto.getWorry3());
				psmt.setString(6, dto.getAngry1());
				psmt.setString(7, dto.getAngry2());
				psmt.setString(8, dto.getAngry3());
				psmt.setString(9, dto.getSad1());
				psmt.setString(10, dto.getSad2());
				psmt.setString(11, dto.getSad3());
				psmt.setString(12, dto.getHappy1());
				psmt.setString(13, dto.getHappy2());
				psmt.setString(14, dto.getHappy3());
				
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;
		}
		
		public int kakaoresult(dataDTO dto) {
			conn();

			try {
				String sql = "insert into keyword values(?,?,?,sysdate)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPartner());
				psmt.setString(3, dto.getTemper());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;	
			
			
			
		}
}
