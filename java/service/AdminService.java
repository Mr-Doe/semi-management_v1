package service;

import java.util.List;

import domain.AccountVO;
import domain.InventoryVO;

public interface AdminService {
	public List<InventoryVO> getItemList();
	public List<AccountVO> getMemList();
}
