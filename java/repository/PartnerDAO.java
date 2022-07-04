package repository;

import java.util.List;

import domain.PartnerVO;

public interface PartnerDAO {
	public List<PartnerVO> selectList();
	public PartnerVO getSelect(int pid);
	public int update(PartnerVO pvo);
}
