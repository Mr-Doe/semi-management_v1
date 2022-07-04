package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.PartnerVO;
import repository.PartnerDAO;
import repository.PartnerDAOImpl;

public class PartnerServiceImpl implements PartnerService {
	private static Logger log = LoggerFactory.getLogger(PartnerServiceImpl.class);
	private PartnerDAO pdao;
	
	public PartnerServiceImpl() {
		pdao = new PartnerDAOImpl();
	}
	
	@Override
	public List<PartnerVO> getList() {
		return pdao.selectList();
	}

	@Override
	public PartnerVO getSelect(int pid) {
		return pdao.getSelect(pid);
	}

	@Override
	public int modify(PartnerVO pvo) {
		return pdao.update(pvo);
	}

}
