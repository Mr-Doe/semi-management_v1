package repository;

import java.util.List;

import domain.InventoryVO;

public interface InventoryDAO {
	public List<InventoryVO> list(int classifi, int vendor);
	public InventoryVO select (int iid);
	public int update(InventoryVO ivo);
	public int insert(InventoryVO ivo);
	public int delete(InventoryVO ivo);
}
