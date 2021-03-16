package com.notify.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class NotifyDAO implements Notify_interface {
	private static final String INSERT_STMT = "INSERT INTO Notify(Notify_Person, Notify_Content, Notify_Time) VALUES (?, ?, ?)";
//	private static final String UPDATE_STMT = "UPDATE Notify SET Notify_Person = ?, Notify_Content = ?, Notify_Time = ? WHERE Notify_No = ?";
//	private static final String DELETE_STMT = "DELETE FROM Notify WHERE Notify_No = ?";
	private static final String FIND_BY_PK = "SELECT * FROM Notify WHERE Notify_No = ?";
	private static final String FIND_BY_NOTIFYPERSON = "SELECT * FROM Notify WHERE Notify_Person = ? order by Notify_Time";
	private static final String GET_ALL = "SELECT * FROM Notify";
	private static DataSource ds = null;

	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/guidemeDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insert(NotifyVO notifyVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setInt(1, notifyVO.getNotifyPerson());
			pstmt.setString(2, notifyVO.getNotifyContent());
			pstmt.setTimestamp(3, notifyVO.getNotifyTime());
			;
			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

//	@Override
//	public void update(NotifyVO notifyVO) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//
//		try {
//
//			Class.forName(DRIVER);
//			con = DriverManager.getConnection(URL, USER, PASSWORD);
//			pstmt = con.prepareStatement(UPDATE_STMT);
//
//			pstmt.setInt(1, notifyVO.getNotifPerson());
//			pstmt.setString(2, notifyVO.getNotifContent());
//			pstmt.setDate(3, notifyVO.getNotifTime());
//
//			pstmt.executeUpdate();
//
//			// Handle any driver errors
//		} catch (ClassNotFoundException e) {
//			throw new RuntimeException("Couldn't load database driver. "
//					+ e.getMessage());
//			// Handle any SQL errors
//		} catch (SQLException se) {
//			throw new RuntimeException("A database error occured. "
//					+ se.getMessage());
//			// Clean up JDBC resources
//		} finally {
//			if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException se) {
//					se.printStackTrace(System.err);
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				} catch (Exception e) {
//					e.printStackTrace(System.err);
//				}
//			}
//		}
//		
//	}

//	@Override
//	public void delete(Integer notifNo) {
//		
//	}

	@Override
	public NotifyVO findByPrimaryKey(Integer notifNo) {
		NotifyVO notifyVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FIND_BY_PK);
			pstmt.setInt(1, notifNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				notifyVO = new NotifyVO();
				notifyVO.setNotifyNo(rs.getInt("Notify_No"));
				notifyVO.setNotifyPerson(rs.getInt("Notify_Person"));
				notifyVO.setNotifyContent(rs.getString("Notify_Content"));
//				notifyVO.setNotifTime(rs.getDate("Notify_Time"));
				notifyVO.setNotifyTime(rs.getTimestamp("Notify_Time"));

			}
		} catch (SQLException e) {
			throw new RuntimeException("A database error occured. " + e.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

		return notifyVO;
	}

	@Override
	public List<NotifyVO> findByNotifyPerson(Integer notifyPerson) {
		List<NotifyVO> list = new ArrayList<NotifyVO>();
		NotifyVO notifyVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(FIND_BY_NOTIFYPERSON);
			pstmt.setInt(1, notifyPerson);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				notifyVO = new NotifyVO();
				notifyVO.setNotifyNo(rs.getInt("Notify_No"));
				notifyVO.setNotifyPerson(rs.getInt("Notify_Person"));
				notifyVO.setNotifyContent(rs.getString("Notify_Content"));
//				notifyVO.setNotifTime(rs.getDate("Notify_Time"));
				notifyVO.setNotifyTime(rs.getTimestamp("Notify_Time"));
				list.add(notifyVO);
			}
		} catch (SQLException e) {
			throw new RuntimeException("A database error occured. " + e.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

		return list;
	}

	@Override
	public List<NotifyVO> getAll() {
		List<NotifyVO> list = new ArrayList<NotifyVO>();
		NotifyVO notifyVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				notifyVO = new NotifyVO();
				notifyVO.setNotifyNo(rs.getInt("Notify_No"));
				notifyVO.setNotifyPerson(rs.getInt("Notify_Person"));
				notifyVO.setNotifyContent(rs.getString("Notify_Content"));
//				notifyVO.setNotifTime(rs.getDate("Notify_Time"));
				notifyVO.setNotifyTime(rs.getTimestamp("Notify_Time"));
				list.add(notifyVO);
			}

		} catch (SQLException e) {
			throw new RuntimeException("A database error occured. " + e.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

		return list;
	}

	@Override
	public void insert2(NotifyVO notifyVO, Connection con) {
		PreparedStatement pstmt = null;

		try {

			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setInt(1, notifyVO.getNotifyPerson());
			pstmt.setString(2, notifyVO.getNotifyContent());
			pstmt.setTimestamp(3, notifyVO.getNotifyTime());
			pstmt.executeUpdate();

		} catch (SQLException se) {
			if (con != null) {
				try {
					// 3●設定於當有exception發生時之catch區塊內
					System.err.print("Transaction is being ");
					System.err.println("rolled back-由-notify");
					con.rollback();
				} catch (SQLException excep) {
					throw new RuntimeException("rollback error occured. "
							+ excep.getMessage());
				}
			}
			throw new RuntimeException("A database error occured. " + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
		}
	}

}
