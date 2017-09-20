package com.shoppingmart.entities;
 
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
 
@Entity
@Table(name="APP_USER")
public class UserEnity implements Serializable{
 
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id 
    //@GeneratedValue(strategy=GenerationType.SEQUENCE)
    @GeneratedValue(strategy=GenerationType.AUTO, generator="my_seq_gen1")
    @SequenceGenerator(name="my_seq_gen1", sequenceName="t1_seq")
    private Integer id;
 
    //@NotEmpty
    //@Column(name="SSO_ID", unique=true, nullable=false)
    //private String confirmPassword;
     
    @NotEmpty
    @Column(name="PASSWORD", nullable=false)
    private String password;
         
    @NotEmpty
    @Column(name="FIRST_NAME", nullable=false)
    private String firstName;
 
    @NotEmpty
    @Column(name="LAST_NAME", nullable=false)
    private String lastName;
    
    @NotEmpty
    @Column(name="GENDER", nullable=false)
    private String gender;
   
     
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @Column(name="DOB")
    private Date  dob;
 
    

	@NotEmpty
    @Column(name="EMAIL", nullable=false)
    private String email;
 
	@OneToMany(mappedBy = "userEnity", cascade = CascadeType.ALL)
    private Set<UserDocument> userDocuments = new HashSet<UserDocument>();
    
    
	
	
    @NotEmpty
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "APP_USER_USER_PROFILE", 
             joinColumns = { @JoinColumn(name = "USER_ID") }, 
             inverseJoinColumns = { @JoinColumn(name = "USER_PROFILE_ID")})
    
    private Set<UserProfile> userProfiles = new HashSet<UserProfile>();
 
    public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
    public Integer getId() {
        return id;
    }
 
    public void setId(Integer id) {
        this.id = id;
    }
 
    
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
    public String getFirstName() {
        return firstName;
    }
 
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
 
    public String getLastName() {
        return lastName;
    }
 
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public Set<UserDocument> getUserDocuments() {
        return userDocuments;
    }
 
    public void setUserDocuments(Set<UserDocument> userDocuments) {
        this.userDocuments = userDocuments;
    }
    public Set<UserProfile> getUserProfiles() {
        return userProfiles;
    }
 
    public void setUserProfiles(Set<UserProfile> userProfiles) {
        this.userProfiles = userProfiles;
    }

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	

	

	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dob == null) ? 0 : dob.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userDocuments == null) ? 0 : userDocuments.hashCode());
		result = prime * result + ((userProfiles == null) ? 0 : userProfiles.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof UserEnity))
			return false;
		UserEnity other = (UserEnity) obj;
		if (dob == null) {
			if (other.dob != null)
				return false;
		} else if (!dob.equals(other.dob))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userDocuments == null) {
			if (other.userDocuments != null)
				return false;
		} else if (!userDocuments.equals(other.userDocuments))
			return false;
		if (userProfiles == null) {
			if (other.userProfiles != null)
				return false;
		} else if (!userProfiles.equals(other.userProfiles))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", userDocuments=" + userDocuments + ", userProfiles=" + userProfiles + "]";
	}

	/*public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}*/

}