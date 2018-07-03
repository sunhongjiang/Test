package com.sunhongjiang.frontiercrops.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.sunhongjiang.frontiercrops.dao.QuestionnaireDao;
import com.sunhongjiang.frontiercrops.domain.Questionnaire;
import com.sunhongjiang.frontiercrops.util.DBHelper;

public class QuestionnaireDaoImpl implements QuestionnaireDao {
	private static final Logger LOGGER = LogManager.getLogger(QuestionnaireDaoImpl.class);

	@Override
	public List<Questionnaire> getAll() {
		List<Questionnaire> list = new ArrayList<>();

		Connection conn = DBHelper.getInstance().getConnection();

		String sql = "SELECT * FROM tbl_questionnaire";

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			Questionnaire questionnaire = null;

			while (rs.next()) {
				questionnaire = new Questionnaire();
				questionnaire.setTitle(rs.getString("title"));
				questionnaire.setDescription(rs.getString("description"));
				questionnaire.setQuestion(rs.getString("question"));
				questionnaire.setAnswers(rs.getArray("answers"));
				list.add(questionnaire);
				LOGGER.info("找到一个对象，放入到list中!");
			}
		} catch (SQLException e) {
			LOGGER.catching(e);
		} finally {
			DBHelper.closeResultSet(rs);
			DBHelper.closeStatement(ps);
		}
		return list;
	}

	@SuppressWarnings({ "null", "resource" })
	@Override
	public void addQuestionnaire(Questionnaire q) {
		Connection conn = DBHelper.getInstance().getConnection();
		String sql = "INSERT INTO tbl_questionnaire VALUES(?,?,?,?,?)";
		PreparedStatement ps = null;

		try {
			ps.setString(1, q.getId());
			ps.setString(2, q.getTitle());
			ps.setString(3, q.getDescription());
			ps.setArray(4, q.getAnswers());

			ps = conn.prepareStatement(sql);

		} catch (Exception e) {
			LOGGER.catching(e);
		} finally {
			DBHelper.closeStatement(ps);
		}
	}

	@SuppressWarnings({ "resource", "null" })
	@Override
	public void singleDelete(String id) {
		Connection conn = DBHelper.getInstance().getConnection();
		String sql = "DELETE FROM tbl_questionnaire WHERE id = ?";
		PreparedStatement ps = null;

		try {
			ps.setString(1, id);
			ps = conn.prepareStatement(sql);

		} catch (Exception e) {
			LOGGER.catching(e);
		} finally {
			DBHelper.closeStatement(ps);
		}
	}

	@Override
	public void batchDelete(String[] ids) {
		Connection conn = DBHelper.getInstance().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "";

	}

	@Override
	public List<Questionnaire> search(String text) {
		List<Questionnaire> list = new ArrayList<>();
		Questionnaire questionnaire = null;
		String sql = "";

		Connection conn = DBHelper.getInstance().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		if (text.equals("") || text.equals(null)) {
			sql = "SELECT * FROM tbl_questionnaire WHERE title like ?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%" + text + "%");
				rs = ps.executeQuery();

				while (rs.next()) {
					questionnaire = new Questionnaire();
					questionnaire.setTitle(rs.getString("title"));
					questionnaire.setDescription(rs.getString("description"));
					questionnaire.setQuestion(rs.getString("question"));
					questionnaire.setAnswers(rs.getArray("answers"));
					list.add(questionnaire);
				}
			} catch (SQLException e) {
				LOGGER.catching(e);
			} finally {
				DBHelper.closeResultSet(rs);
				DBHelper.closeConnection(conn);
			}
			return list;
		}
		return null;
	}

	@Override
	public void editQuestionnaire(Questionnaire q) {
		Connection conn = DBHelper.getInstance().getConnection();

		String sql = "UPDATE tbl_questionnaire SET title = ?, description = ?, question =?, answers=?  WHERE id = ?";

		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, q.getTitle());
			ps.setString(2, q.getDescription());
			ps.setString(3, q.getQuestion());
			ps.setArray(4, q.getAnswers());
			ps.setString(5, q.getId());

		} catch (SQLException e) {
			LOGGER.catching(e);
		} finally {
			DBHelper.closeConnection(conn);
		}

	}

}
