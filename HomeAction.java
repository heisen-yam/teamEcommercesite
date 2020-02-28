package com.internousdev.bianco.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.bianco.dao.MCategoryDAO;
import com.internousdev.bianco.dto.MCategoryDTO;
import com.internousdev.bianco.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public String execute() {


		if (!session.containsKey("logined")) {
			session.put("logined", 0);
		}

		String tmpLogined = String.valueOf(session.get("logined")); 
		int logined = "null".equals(tmpLogined) ? 0 : Integer.parseInt(tmpLogined); 
		if (!session.containsKey("tmpUserId") && logined == 0) {
			CommonUtility commonutility = new CommonUtility();
			session.put("tmpUserId", commonutility.getRamdomValue());
		}

		if (!session.containsKey("mCategoryDTOList")) {
			MCategoryDAO mCategoryDAO = new MCategoryDAO();
			List<MCategoryDTO> mCategoryDTOList = new ArrayList<MCategoryDTO>();
			try {
				mCategoryDTOList = mCategoryDAO.getMCategoryList();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			session.put("mCategoryDTOList", mCategoryDTOList);
		}
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
