package repository;

import org.apache.ibatis.session.SqlSession;

import domain.AccountVO;
import orm.DataBaseBuilder;

public class LoginDAOImpl implements LoginDAO {
	private static SqlSession sql;
	private final String NS = "LoginMapper.";
	private int isUp;

	public LoginDAOImpl() {
		new DataBaseBuilder();
		sql = DataBaseBuilder.getFactory().openSession();
	}

	@Override
	public AccountVO loginSelect(AccountVO avo) {
		AccountVO result = new AccountVO();
		result = sql.selectOne(NS + "login", avo);
		if(result != null) {
			isUp = sql.update(NS + "last_at", result.getUid());
			if(isUp > 0) sql.commit();
		}
		return result;
	}
}
