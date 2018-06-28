package com.sunhongjiang.frontiercrops.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.sunhongjiang.frontiercrops.dao.ApplyDao;
import com.sunhongjiang.frontiercrops.domain.Apply;
import com.sunhongjiang.frontiercrops.util.DBHelper;

public class ApplyDaoImpl implements ApplyDao {

	private static final Logger LOGGER = LogManager.getLogger(ApplyDaoImpl.class);

	public void aduit() {
		// TODO Auto-generated method stub

	}

	public Apply detail(String id) {
		Apply apply = null;

		Connection conn = DBHelper.getInstance().getConnection();

		String sql = "SELECT * FROM tbl_apply WHERE id = ?";

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);

			ps.setString(1, id);

			rs = ps.executeQuery();

			while (rs.next()) {
				apply = new Apply();
				apply.setId(id);
				apply.setShipName(rs.getString("shipname"));
				apply.setShipPort(rs.getString("shipport"));
				apply.setShipOwner(rs.getString("shipowner"));
				apply.setNavigationArea(rs.getString("navigationarea"));
				apply.setCaptain(rs.getString("captain"));
				apply.setCaptainAddress(rs.getString("captainaddress"));
				apply.setShipInstitute(rs.getString("shipinstitute"));
				apply.setEntrustUnit(rs.getString("entrustunit"));
				apply.setCaptainTel(rs.getString("captaintel"));
				apply.setShipQuality(rs.getString("shipquality"));
				apply.setJobType(rs.getString("jobtype"));
				apply.setOwnerId(rs.getString("ownerid"));
				apply.setStopArea(rs.getString("stoparea"));
				apply.setCaptainId(rs.getString("captainid"));
				apply.setPass(rs.getString("pass"));
				apply.setComent(rs.getString("coment"));
				apply.setApplier(rs.getString("applier"));
				apply.setTitle(rs.getString("title"));
			}

		} catch (SQLException e) {
			LOGGER.catching(e);
		}
		return apply;
	}

	@SuppressWarnings("resource")
	public List<Apply> search(String applier, String title) {
		List<Apply> list = new ArrayList<>();
		Apply apply = null;
		String sql = "";

		Connection conn = DBHelper.getInstance().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		if (applier.equals("") || applier.equals(null)) {
			sql = "SELECT * FROM tbl_apply WHERE title = ?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, title);
				rs = ps.executeQuery();

				while (rs.next()) {
					apply = new Apply();

					apply.setId(rs.getString("id"));
					apply.setShipName(rs.getString("shipname"));
					apply.setShipPort(rs.getString("shipport"));
					apply.setShipOwner(rs.getString("shipowner"));
					apply.setNavigationArea(rs.getString("navigationarea"));
					apply.setCaptain(rs.getString("captain"));
					apply.setCaptainAddress(rs.getString("captainaddress"));
					apply.setShipInstitute(rs.getString("shipinstitute"));
					apply.setEntrustUnit(rs.getString("entrustunit"));
					apply.setCaptainTel(rs.getString("captaintel"));
					apply.setShipQuality(rs.getString("shipquality"));
					apply.setJobType(rs.getString("jobtype"));
					apply.setOwnerId(rs.getString("ownerid"));
					apply.setStopArea(rs.getString("stoparea"));
					apply.setCaptainId(rs.getString("captainid"));
					apply.setPass(rs.getString("pass"));
					apply.setComent(rs.getString("coment"));
					apply.setApplier(rs.getString("applier"));
					apply.setTitle(rs.getString("title"));

					list.add(apply);
				}
			} catch (SQLException e) {
				LOGGER.catching(e);
			} finally {
				DBHelper.closeResultSet(rs);
				DBHelper.closeConnection(conn);
			}
			return list;
		} else {
			sql = "SELECT * FROM tbl_apply WHERE applier = ?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, applier);
				rs = ps.executeQuery();

				while (rs.next()) {
					apply = new Apply();

					apply.setId(rs.getString("id"));
					apply.setShipName(rs.getString("shipname"));
					apply.setShipPort(rs.getString("shipport"));
					apply.setShipOwner(rs.getString("shipowner"));
					apply.setNavigationArea(rs.getString("navigationarea"));
					apply.setCaptain(rs.getString("captain"));
					apply.setCaptainAddress(rs.getString("captainaddress"));
					apply.setShipInstitute(rs.getString("shipinstitute"));
					apply.setEntrustUnit(rs.getString("entrustunit"));
					apply.setCaptainTel(rs.getString("captaintel"));
					apply.setShipQuality(rs.getString("shipquality"));
					apply.setJobType(rs.getString("jobtype"));
					apply.setOwnerId(rs.getString("ownerid"));
					apply.setStopArea(rs.getString("stoparea"));
					apply.setCaptainId(rs.getString("captainid"));
					apply.setPass(rs.getString("pass"));
					apply.setComent(rs.getString("coment"));
					apply.setApplier(rs.getString("applier"));
					apply.setTitle(rs.getString("title"));

					list.add(apply);

					return list;
				}
			} catch (SQLException e) {
				LOGGER.catching(e);
			} finally {
				DBHelper.closeResultSet(rs);
				DBHelper.closeConnection(conn);
			}
		}
		return null;
	}

	public List<Apply> getAll() {
		List<Apply> list = new ArrayList<>();

		Connection conn = DBHelper.getInstance().getConnection();

		String sql = "SELECT * FROM tbl_apply";

		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			Apply apply = null;

			while (rs.next()) {
				apply = new Apply();

				apply.setId(rs.getString("id"));
				apply.setShipName(rs.getString("shipname"));
				apply.setShipPort(rs.getString("shipport"));
				apply.setShipOwner(rs.getString("shipowner"));
				apply.setNavigationArea(rs.getString("navigationarea"));
				apply.setCaptain(rs.getString("captain"));
				apply.setCaptainAddress(rs.getString("captainaddress"));
				apply.setShipInstitute(rs.getString("shipinstitute"));
				apply.setEntrustUnit(rs.getString("entrustunit"));
				apply.setCaptainTel(rs.getString("captaintel"));
				apply.setShipQuality(rs.getString("shipquality"));
				apply.setJobType(rs.getString("jobtype"));
				apply.setOwnerId(rs.getString("ownerid"));
				apply.setStopArea(rs.getString("stoparea"));
				apply.setCaptainId(rs.getString("captainid"));
				apply.setPass(rs.getString("pass"));
				apply.setComent(rs.getString("coment"));
				apply.setApplier(rs.getString("applier"));
				apply.setTitle(rs.getString("title"));

				list.add(apply);
			}
		} catch (SQLException e) {
			LOGGER.catching(e);
		} finally {
			DBHelper.closeResultSet(rs);
			DBHelper.closeStatement(ps);
		}
		return list;
	}

}
