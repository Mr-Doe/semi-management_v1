package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.InventoryVO;
import repository.InventoryDAO;
import repository.InventoryDAOImpl;

public class InventoryServiceImpl implements InventoryService {
	private static Logger log = LoggerFactory.getLogger(InventoryServiceImpl.class);
	private InventoryDAO idao;

	public InventoryServiceImpl() {
		idao = new InventoryDAOImpl();
	}

	@Override
	public List<InventoryVO> getList(int classifi, int vendor) {
		return idao.list(classifi, vendor);
	}

	@Override
	public InventoryVO getDetail(int iid) {
		return idao.select(iid);
	}

	@Override
	public int modify(InventoryVO ivo) {
		return idao.update(ivo);
	}

	@Override
	public int create(InventoryVO ivo) {
		return idao.insert(ivo);
	}

	@Override
	public int remove(int iid) {
		return idao.delete(iid);
	}

}
