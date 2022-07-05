package service;

import java.util.List;

import domain.InventoryVO;

public interface InventoryService {
	public List<InventoryVO> getList(int classifi, int vendor);
	public InventoryVO getDetail(int iid);
	public int modify(InventoryVO ivo);
	public int create(InventoryVO ivo);
	public int remove(InventoryVO ivo);
}
