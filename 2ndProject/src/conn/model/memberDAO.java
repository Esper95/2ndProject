package conn.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class memberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	memberDTO data =null;
	
	//DB ����
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
	
	//DB ����
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
	
	//ȸ�� ���� 
		public int join(memberDTO dto) {
			conn();
		
			try {
				String sql = "insert into table values(?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPw());
				psmt.setString(3, dto.getPhone());
				psmt.setString(4, dto.getEmail());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			return cnt;
		}
		
		//�α��� 
		public memberDTO login(memberDTO dto) {
			conn();
			
			
			try {
				String sql = "select * from table where id=? and pw=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPw());
				
				rs =  psmt.executeQuery();
				
				if(rs.next()) {
					
					//���ϰ� �迭�� ���� dto �� ���� �־��� 
					data = new memberDTO(dto.getId(),dto.getPw());
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			return data;
		}
		
		//����������
		public int Update(memberDTO dto) {
			conn();
			String id = dto.getId();
			
			try {
				String sql = "update table set pw=?,phone=?,address=? where id='"+id+"'";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getPw());
				psmt.setString(2, dto.getPhone());
				psmt.setString(3, dto.getEmail());
				System.out.println(sql);
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
		
}
