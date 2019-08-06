package org.websparrow.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.websparrow.model.User;

public class UserDaoImpl implements UserDao {

	private JdbcTemplate jdbcTemplate;

	public UserDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public int registerUser(User user) {
		
		String sql = "INSERT INTO USER_DATA VALUES(?,?,?,?,?)";

		try {
			
			int counter = jdbcTemplate.update(sql, new Object[] { user.getUserid(), user.getPassword(),user.getEmail(),user.getFullname(),user.getRole()});

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public String loginUser(User user) {

		String sql = "SELECT ROLE FROM USER_DATA WHERE USERID=? AND PASSWORD=?";

		try {

			String role = jdbcTemplate.queryForObject(sql, new Object[] {
					user.getUserid(), user.getPassword()}, String.class);

			return role;

		} catch (Exception e) {
			return null;
		}
	}
}
