package service;

import java.util.List;

import domain.PartnerVO;

public interface PartnerService {

	public List<PartnerVO> getList();
	public PartnerVO getSelect(int pid);
	public int modify(PartnerVO pvo);
	public int create(PartnerVO pvo);
	public int remove(int pid);

}
