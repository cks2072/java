package chap19.rentCar.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap19.common.base.AbstractBaseDAO;
import chap19.rentCar.vo.RentCarVO;

public class RentCarDAOImpl extends AbstractBaseDAO implements RentCarDAO {

	@Override
	public List<RentCarVO> selectRent(RentCarVO rentcarVO) throws Exception {
		List<RentCarVO> rentList = new ArrayList<>();
		String sql = "SELECT * FROM t_rentcar";
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			String renNumber = rs.getString("renNumber");
			String renColor = rs.getString("renColor");
			String renDispla = rs.getString("renDispla");
			String renMaker = rs.getString("renMaker");

			RentCarVO vo = new RentCarVO();
			vo.setRenNumber(renNumber);
			vo.setRenColor(renColor);
			vo.setRenDispla(renDispla);
			vo.setRenMaker(renMaker);

			rentList.add(vo);
		}
		rs.close();
		return rentList;
	}

	@Override
	public int insertRent(RentCarVO rentcarVO) throws SQLException {
		int result = 0;
		String sql = "INSERT INTO t_rentcar (renNumber, renColor, renDispla, renMaker) VALUES (?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, rentcarVO.getRenNumber());
		pstmt.setString(2, rentcarVO.getRenColor());
		pstmt.setString(3, rentcarVO.getRenDispla());
		pstmt.setString(4, rentcarVO.getRenMaker());

		result = pstmt.executeUpdate();
		return result;
	}

	@Override
	public int updateRent(RentCarVO rentcarVO) throws SQLException {
		int result = 0;
		String sql = "UPDATE t_rentcar SET renColor = ?, renDispla = ?, renMaker = ? WHERE renNumber = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, rentcarVO.getRenColor());
		pstmt.setString(2, rentcarVO.getRenDispla());
		pstmt.setString(3, rentcarVO.getRenMaker());
		pstmt.setString(4, rentcarVO.getRenNumber());

		result = pstmt.executeUpdate();
		return result;
	}

	@Override
	public int deleteRent(RentCarVO rentcarVO) throws SQLException {
		int result = 0;
		String sql = "DELETE FROM t_rentcar WHERE renNumber = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, rentcarVO.getRenNumber());

		result = pstmt.executeUpdate();
		return result;
	}

	@Override
	public RentCarVO checkId(String renNumber) throws SQLException {
		RentCarVO vo = new RentCarVO();
		String sql = "SELECT * FROM t_rentcar WHERE renNumber = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, renNumber);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			vo.setRenNumber(rs.getString("renNumber"));
			vo.setRenColor(rs.getString("renColor"));
			vo.setRenDispla(rs.getString("renDispla"));
			vo.setRenMaker(rs.getString("renMaker"));
		}
		rs.close();
		return vo;
	}
}
