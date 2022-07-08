package repository;

import java.util.List;

import domain.AccountVO;

public interface LoginDAO {

	public AccountVO loginSelect(AccountVO avo);
	public List<AccountVO> selectAdminList();

}
