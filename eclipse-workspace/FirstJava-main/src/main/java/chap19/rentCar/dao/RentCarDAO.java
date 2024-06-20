package chap19.rentCar.dao;

import java.sql.SQLException;
import java.util.List;

import chap19.rentCar.vo.RentCarVO;

public interface RentCarDAO {

	public List<RentCarVO> selectRent(RentCarVO rentcarVO) throws Exception;

	public int insertRent(RentCarVO rentcarVO) throws SQLException;
	
	public int updateRent(RentCarVO rentcarVO) throws SQLException;
	
	public int deleteRent(RentCarVO rentcarVO) throws SQLException;
	
	public RentCarVO checkId(String renId) throws SQLException;

}
