package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import repository.BoardDAO;
import repository.BoardDAOImpl;

public class BoardServiceImpl implements BoardService {
	private static Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	private BoardDAO bdao;

	public BoardServiceImpl() {
		bdao = new BoardDAOImpl();
	}

	@Override
	public int create(BoardVO bvo) {
		return bdao.insert(bvo);
	}

	@Override
	public List<BoardVO> getList() {
		return bdao.selectList();
	}

	@Override
	public BoardVO detail(long bno) {
		int isUp = bdao.updateReadCount(bno, 1);
		try {
			Thread.sleep(500);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isUp > 0 ? bdao.selectOne(bno) : null;
	}

	@Override
	public int modify(BoardVO bvo) {
		return bdao.update(bvo);
	}

	@Override
	public int remove(long bno) {
		return bdao.delete(bno);
	}

	@Override
	public int removeFile(long bno) {
		return bdao.updateFile(bno);
	}

	@Override
	public String getFileName(Long bno) {
		return bdao.selectFileName(bno);
	}

}
