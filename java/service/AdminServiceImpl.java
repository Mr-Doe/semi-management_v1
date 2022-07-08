package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.AccountVO;
import domain.InventoryVO;
import repository.InventoryDAO;
import repository.InventoryDAOImpl;
import repository.LoginDAO;
import repository.LoginDAOImpl;

public class AdminServiceImpl implements AdminService {
	private static Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	private InventoryDAO idao;
	private LoginDAO ldao;
	
	public AdminServiceImpl() {
		idao = new InventoryDAOImpl();
		ldao = new LoginDAOImpl();
	}
	
	@Override
	public List<InventoryVO> getItemList() {
		return idao.selectAdminList();
	}

	@Override
	public List<AccountVO> getMemList() {
		return ldao.selectAdminList();
	}

}
