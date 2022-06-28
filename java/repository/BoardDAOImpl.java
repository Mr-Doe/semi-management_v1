package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import orm.DataBaseBuilder;

public class BoardDAOImpl implements BoardDAO {
	private static Logger log = LoggerFactory.getLogger(BoardDAOImpl.class);
	private static SqlSession sql;
	private final String NAMESPACE = "BoardMapper.";
	private int isUp;

	public BoardDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(BoardVO bvo) {
		isUp = sql.insert(NAMESPACE + "reg", bvo);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public List<BoardVO> selectList() {
		return sql.selectList(NAMESPACE + "list");
	}

	@Override
	public BoardVO selectOne(long bno) {
		return sql.selectOne(NAMESPACE + "one", bno);
	}

	@Override
	public int update(BoardVO bvo) {
		isUp = sql.update(NAMESPACE + "modify", bvo);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public int delete(long bno) {
		isUp = sql.delete(NAMESPACE + "remove", bno);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public int updateFile(long bno) {
		isUp = sql.update(NAMESPACE + "delFile", bno);
		if(isUp > 0) sql.commit();
		return isUp;
	}

	@Override
	public String selectFileName(Long bno) {
		return sql.delete(NAMESPACE + "fileName", bno);
	}

	@Override
	public int updateReadCount(long bno, int qty) {
		Map<String, Long> map = new HashMap<>();
		map.put("bno", bno);
		map.put("qty", (long)qty);
		isUp = sql.update(NAMESPACE + "rc", map);
		if(isUp > 0) sql.commit();
		return isUp;
	}

}
