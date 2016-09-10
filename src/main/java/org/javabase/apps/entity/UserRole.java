package org.javabase.apps.entity;

import java.io.Serializable;

public class UserRole implements Serializable{
	
	private static final long serialVersionUID = 2357431579873845634L;
	
	private String roleId;
	private String userRole;
	
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

}
