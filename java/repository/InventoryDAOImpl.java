package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.InventoryVO;
import orm.DataBaseBuilder;

public class InventoryDAOImpl implements InventoryDAO {
	private static Logger log = LoggerFactory.getLogger(InventoryDAOImpl.class);
	private static SqlSession sql;
	private final String NS = "InventoryMapper.";
	private int isUp;

	public InventoryDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public List<InventoryVO> list(int classifi, int vendor) {
		Map<String, Integer> map = new HashMap<>();
		map.put("classifi", classifi);
		map.put("vendor", vendor);
		return sql.selectList(NS + "list", map);
	}

	@Override
	public InventoryVO select(int iid) {
		return sql.selectOne(NS + "select", iid);
	}

	@Override
	public int update(InventoryVO ivo) {
		return sql.update(NS + "update", ivo);
	}

	@Override
	public int insert(InventoryVO ivo) {
		isUp = sql.insert(NS + "insert", ivo);
		if(isUp > 0) sql.commit();
		
		return isUp;
	}

	@Override
	public int delete(int iid) {
		isUp = sql.update(NS + "delete", iid);
		if(isUp > 0) sql.commit();
		return isUp;
	}

}
