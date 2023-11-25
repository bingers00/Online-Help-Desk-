package userlogin;

public class User {
	private int uid;
	private String username;
	private String firstname;
	private String lastname;
	private int telephone;
	private String email;
	private String gender;
	private String nic;
	private String address;
	private String password;
	
	public User(int uid, String username, String firstname, String lastname, int telephone, String email, String gender,
			String nic, String address, String password) {
		
		this.uid = uid;
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.telephone = telephone;
		this.email = email;
		this.gender = gender;
		this.nic = nic;
		this.address = address;
		this.password = password;
	}

	public int getUid() {
		return uid;
	}

	public String getUsername() {
		return username;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public int getTelephone() {
		return telephone;
	}

	public String getEmail() {
		return email;
	}

	public String getGender() {
		return gender;
	}

	public String getNic() {
		return nic;
	}

	public String getAddress() {
		return address;
	}

	public String getPassword() {
		return password;
	}

}
