package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.PartnerVO;
import orm.DataBaseBuilder;

public class PartnerDAOImpl implements PartnerDAO {
	private static SqlSession sql;
	private final String NS = "PartnerMapper.";
	private int isUp;

	public PartnerDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}
	
	@Override
	public List<PartnerVO> selectList() {
		return sql.selectList(NS + "list");
	}

	@Override
	public PartnerVO getSelect(int pid) {
		return sql.selectOne(NS + "select", pid);
	}

	@Override
	public int update(PartnerVO pvo) {
		isUp = sql.update(NS + "update", pvo);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public int insert(PartnerVO pvo) {
		isUp = sql.insert(NS + "insert", pvo);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public int delete(int pid) {
		isUp = sql.delete(NS + "delete", pid);
		if(isUp > 0) sql.commit();
		return isUp;
	}

}
