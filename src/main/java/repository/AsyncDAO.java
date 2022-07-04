package repository;

import java.util.List;

import domain.AccountVO;
import domain.ClassifiVO;
import domain.PartnerVO;
import domain.VendorVO;

public interface AsyncDAO {
	public List<ClassifiVO> getClassList();
	public List<VendorVO> getVendorList(int classifi);
	public List<PartnerVO> getAutocompList(String searchingData);
	public List<AccountVO> getAccountList(String searchedName);
}
