package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.AccountVO;
import domain.ClassifiVO;
import domain.PartnerVO;
import domain.VendorVO;
import repository.AsyncDAO;
import repository.AsyncDAOImpl;

public class AsyncServiceImpl implements AsyncService {
	private static Logger log = LoggerFactory.getLogger(AsyncServiceImpl.class);
	private AsyncDAO adao;

	public AsyncServiceImpl() {
		adao = new AsyncDAOImpl();
	}

	@Override
	public List<ClassifiVO> classList() {
		return adao.getClassList();
	}

	@Override
	public List<VendorVO> vendorList(int classifi) {
		return adao.getVendorList(classifi);
	}

	@Override
	public List<PartnerVO> autocompList(String searchingData) {
		return adao.getAutocompList(searchingData);
	}

	@Override
	public List<AccountVO> accountList(String searchedName) {
		return adao.getAccountList(searchedName);
	}

}
