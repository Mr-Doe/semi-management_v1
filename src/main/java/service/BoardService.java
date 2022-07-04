package service;

import java.util.List;

import domain.BoardVO;

public interface BoardService {
	public int create(BoardVO bvo);
	public List<BoardVO> getList();
	public BoardVO detail(long bno);
	public int modify(BoardVO bvo);
	public int remove(long bno);
	public int removeFile(long bno);
	public String getFileName(Long bno);
}
