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
				String sql = "insert into kakaodata values(?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPartner());
				psmt.setString(3, dto.getMorning());
				psmt.setString(4, dto.getNight());
				psmt.setString(5, dto.getKikicount());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;
		}
	
		public String[] partner() {
			conn();
			String[] member = new String[5];
			
			try {
				String sql = "select partner from kakaodata";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				
				int i=0;
				while(rs.next()) {
					member[i++] =rs.getString(1);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return member; 
		}
		
		public dataDTO dataMemory(String data) {
			conn();
			dataDTO score = null;
			try {
				String sql = "select morning, night, kikicount from kakaodata where partner =?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, data);
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					String mo = rs.getString(1);
					String ni = rs.getString(2);
					String ki = rs.getString(3);
					score = new dataDTO(mo, ni, ki);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return score;
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
