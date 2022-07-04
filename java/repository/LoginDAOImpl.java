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
		return sql.selectOne(NS + "login", avo);
	}
}
