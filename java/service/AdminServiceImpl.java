package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.InventoryVO;
import repository.InventoryDAO;
import repository.InventoryDAOImpl;

public class AdminServiceImpl implements AdminService {
	private static Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
	private InventoryDAO idao;
	
	public AdminServiceImpl() {
		idao = new InventoryDAOImpl();
	}
	
	@Override
	public List<InventoryVO> getItemList() {
		return idao.selectAdminList();
	}

}
