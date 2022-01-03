package com.webmusic.DaoImpl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.webmusic.model.UserInfo;
import com.webmusic.util.ConnectionUtil;


public class UserInfoDao {

	// Add user using insert method
	public void insertUser(UserInfo str) throws ClassNotFoundException, SQLException {
         
		Connection con = ConnectionUtil.getDBconnect();
		String query = " insert into User_Info( first_name,  last_name, email_Id, user_name, password, role, mobile_number,user_wallet)values (?,?,?,?,?,?,?,?)";

		PreparedStatement stmt = con.prepareStatement(query);

		stmt.setString(1, str.getFirstName());
		stmt.setString(2, str.getLastName());
		stmt.setString(3, str.getEmailId());
		stmt.setString(4, str.getUserName());
		stmt.setString(5, str.getPassword());
		stmt.setString(6, str.getRole());
		stmt.setLong(7, str.getMobileNumber());
		stmt.setDouble(8, 0);
		stmt.executeUpdate();
		System.out.println("You're Registered successfully");
	}

	// Update user details
	public void update(UserInfo user) throws ClassNotFoundException, SQLException {

		String update = "update user_info set first_name=?, last_name=?,user_name=?, password=?, mobile_number=? where email_id = ? ";

		Connection con = ConnectionUtil.getDBconnect();
		PreparedStatement stmt = con.prepareStatement(update);

		stmt.setString(1, user.getFirstName());
		stmt.setString(2, user.getLastName());
		stmt.setString(3, user.getUserName());
		stmt.setString(4, user.getPassword());
		stmt.setLong(5, user.getMobileNumber());
		stmt.setString(6, user.getEmailId());
		System.out.println(user.getEmailId());
		int res = stmt.executeUpdate();

		System.out.println(res + " is updated !!");
	}

	// Delete user
	public void delete(String userName) throws ClassNotFoundException, SQLException {

		try {
			String delete = "delete from user_info where user_name=?";

			Connection con = ConnectionUtil.getDBconnect();

			PreparedStatement stmt = con.prepareStatement(delete);
			stmt.setString(1, userName);

			int res = stmt.executeUpdate();
			System.out.println(res + "is deleted");
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.getMessage();
			System.out.println("something went wrong");
		}
	}

	// List all users
	public List<UserInfo> showAllUsers() {
		List<UserInfo> userList = new ArrayList<UserInfo>();
		String query = "select*from user_info";
		Connection con = null;
		PreparedStatement stmt;
		try {
			con = ConnectionUtil.getDBconnect();
			stmt = con.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				UserInfo userInfo = new UserInfo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getLong(7), rs.getDouble(8));
				userList.add(userInfo);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;

	}
    
	// Recharge Wallet
	public int UpdateUserWallet(UserInfo user) {
		String query = "update user_info set user_wallet=? where email_id=? ";
		String getWalletQuery = "select user_wallet from user_info where email_id=?";
		Connection con;
		int i = 0;
		try {
			con = ConnectionUtil.getDBconnect();
			PreparedStatement checkWallet = con.prepareStatement(getWalletQuery);
			checkWallet.setString(1, user.getEmailId());
			ResultSet rs = checkWallet.executeQuery();
			double wallet = 0;
			if (rs.next()) {
				wallet = rs.getDouble(1);
			}
			System.out.println(wallet + "wallet is found!!");
			PreparedStatement updateWallet = con.prepareStatement(query);
			updateWallet.setDouble(1, wallet + user.getWallet());
			updateWallet.setString(2, user.getEmailId());
			i = updateWallet.executeUpdate();

			System.out.println(i + "wallet is updated");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;

	}
    
	// Switch to Premium
	public int SwitchToPremium(UserInfo user) {
		String query = "update user_info set user_wallet=?,role=? where email_id=? ";
		String getWalletQuery = "select user_wallet from user_info where email_id=?";
		Connection con;
		int i = 0;
		try {
			con = ConnectionUtil.getDBconnect();
			PreparedStatement checkWallet = con.prepareStatement(getWalletQuery);
			checkWallet.setString(1, user.getEmailId());
			ResultSet rs = checkWallet.executeQuery();
			double wallet = 0;
			if (rs.next()) {
				wallet = rs.getDouble(1);
			}
			System.out.println(wallet + "wallet is found!!");
			PreparedStatement updateWallet = con.prepareStatement(query);
			updateWallet.setDouble(1, wallet - 150);
			updateWallet.setString(2, "Premium");
			updateWallet.setString(3, user.getEmailId());
			i = updateWallet.executeUpdate();

			System.out.println(i + "wallet is updated");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
    
	// Add on user to share premium account
	public int AddOnUser(String emailId) {
		int i = 0;
		String updateQuery = "update user_info set role='Premium' where email_id=?";
		try {
			Connection con = ConnectionUtil.getDBconnect();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, emailId);
			i = pstmt.executeUpdate();
			System.out.println("user is updated to premium");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;

	}
}
