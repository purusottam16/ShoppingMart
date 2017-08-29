package com.shoppingmart.model;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;


@Entity
@Table(name = "USERS")
public class UserEntity {
	private String username;
	private String password;
	private String firstname;
	private String lastname;
	private String role;
	private String roleType;
	private String createdBy;
	private String modifiedBy;
	private String email;
	private int enabled;
	private String status;
	private Timestamp createdDate;
	private Timestamp modifiedDate;
	//private Set<AuthoritiesEntity> authoritieses = new HashSet(0);
	private String businessName;
	private String businessId;
	private String groupName;
	private String groupId;
	private Timestamp expiryDate;
	private int loginAttempts;
	/*private List<AdminBusinessInfoEntity> adminBusinessInfos = new ArrayList<AdminBusinessInfoEntity>(
			0);*/

	public UserEntity() {
	}

	public UserEntity(String username, Timestamp createdDate, String email,
			int enabled, String firstname, String lastname,
			Timestamp modifiedDate, String password, String role,String roleType,
			String status, String businessId, String businessName,
			String groupId, String groupName) {
		this.username = username;
		this.createdDate = createdDate;
		this.email = email;
		this.enabled = enabled;
		this.firstname = firstname;
		this.lastname = lastname;
		this.modifiedDate = modifiedDate;
		this.password = password;
		this.role = role;
		this.status = status;
		this.businessId = businessId;
		this.businessName = businessName;
		this.groupId = groupId;
		this.groupName = groupName;
	}

	public UserEntity(String username, String createdBy, Timestamp createdDate,
			String email, int enabled, String firstName, String lastName,
			String modifiedBy, Timestamp modifiedDate, String password,
			String role, String roleType ,String status, String businessId, String businessName,
			String groupId, String groupName/*,
			Set<AuthoritiesEntity> authoritieses,
			List<AdminBusinessInfoEntity> adminBusinessInfos*/) {
		this.username = username;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
		this.email = email;
		this.enabled = enabled;
		this.firstname = firstName;
		this.lastname = lastName;
		this.modifiedBy = modifiedBy;
		this.modifiedDate = modifiedDate;
		this.password = password;
		this.role = role;
		this.status = status;
		this.businessId = businessId;
		this.businessName = businessName;
		this.groupId = groupId;
		this.groupName = groupName;
		//this.authoritieses = authoritieses;
		//this.setAdminBusinessInfos(adminBusinessInfos);
	}

	@Id
	@Column(name = "USERNAME", unique = true, nullable = false, length = 30)
	public String getUsername() {
		return this.username.toLowerCase();
	}

	public void setUsername(String username) {
		this.username = username.toLowerCase();
	}

	@Column(name = "PASSWORD", unique = true, nullable = false, length = 64)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "FIRST_NAME", nullable = true, length = 30)
	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	@Column(name = "LAST_NAME", nullable = true, length = 30)
	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	@Column(name = "ROLE", nullable = false)
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column(name = "EMAIL", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
	@Cascade({ org.hibernate.annotations.CascadeType.ALL })
	public Set<AuthoritiesEntity> getAuthoritieses() {
		return this.authoritieses;
	}

	public void setAuthoritieses(Set<AuthoritiesEntity> authoritieses) {
		this.authoritieses = authoritieses;
	}*/

	@Column(name = "CREATED_BY", nullable = false, length = 30)
	public String getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	@Column(name = "MODIFIED_BY", nullable = false, length = 30)
	public String getModifiedBy() {
		return this.modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	@Column(name = "CREATED_DATE")
	public Timestamp getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	@Column(name = "MODIFIED_DATE")
	public Timestamp getModifiedDate() {
		return this.modifiedDate;
	}

	public void setModifiedDate(Timestamp modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	@Column(name = "ENABLED")
	public int getEnabled() {
		return this.enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	@Column(name = "STATUS")
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "BUSINESS_NAME")
	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	@Column(name = "BUSINESS_ID")
	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	@Column(name = "GROUP_NAME")
	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	@Column(name = "GROUP_ID")
	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	@Column(name = "EXPIRY_DATE")
	public Timestamp getExpiryDate() {
		return this.expiryDate;
	}

	public void setExpiryDate(Timestamp expiryDate) {
		this.expiryDate = expiryDate;
	}

	@Column(name = "LOGIN_ATTEMPTS")
	public int getLoginAttempts() {
		return this.loginAttempts;
	}

	public void setLoginAttempts(int loginAttempts) {
		this.loginAttempts = loginAttempts;
	}

	/*@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "users")
	public List<AdminBusinessInfoEntity> getAdminBusinessInfos() {
		return this.adminBusinessInfos;
	}

	public void setAdminBusinessInfos(
			List<AdminBusinessInfoEntity> adminBusinessInfos) {
		this.adminBusinessInfos = adminBusinessInfos;
	}*/
	@Column(name = "ROLE_TYPE", nullable = false)
	public String getRoleType() {
		return roleType;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

}