package service;

import java.util.List;
import domain.ClassifiVO;
import domain.PartnerVO;
import domain.VendorVO;

public interface AsyncService {
	public List<ClassifiVO> classList();
	public List<VendorVO> vendorList(int classifi);
	public List<PartnerVO> autocompList(String searchingData);
}
