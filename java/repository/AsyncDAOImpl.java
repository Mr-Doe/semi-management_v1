package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.ClassifiVO;
import domain.PartnerVO;
import domain.VendorVO;
import orm.DataBaseBuilder;

public class AsyncDAOImpl implements AsyncDAO {
	private static Logger log = LoggerFactory.getLogger(AsyncDAOImpl.class);
	private static SqlSession sql;
	private final String NS = "AsyncMapper.";
	private int isUp;

	public AsyncDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}
	
	@Override
	public List<ClassifiVO> getClassList() {
		return sql.selectList(NS + "classList");
	}

	@Override
	public List<VendorVO> getVendorList(int classifi) {
		return sql.selectList(NS + "vendorList", classifi);
	}

	@Override
	public List<PartnerVO> getAutocompList(String searchingData) {
		return sql.selectList(NS + "autocompList", searchingData);
	}


}
