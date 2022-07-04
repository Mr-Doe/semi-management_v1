package service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.AccountVO;
import repository.LoginDAO;
import repository.LoginDAOImpl;

public class LoginServiceImpl implements LoginService {
	private static Logger log = LoggerFactory.getLogger(LoginServiceImpl.class);
	private LoginDAO ldao;

	public LoginServiceImpl() {
		ldao = new LoginDAOImpl();
	}
	
	@Override
	public AccountVO login(AccountVO avo) {
		return ldao.loginSelect(avo);
	}

}
