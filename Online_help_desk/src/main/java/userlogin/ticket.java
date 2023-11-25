package userlogin;

public class ticket {
	private int tid;
	private String title;
	private String email;
	private String department;
	private String priority;
	private String problem;
	private int phone;
	private String username;
	
	public ticket(int tid, String title, String email, String department, String priority, String problem, int phone,
			String username) {
		
		this.tid = tid;
		this.title = title;
		this.email = email;
		this.department = department;
		this.priority = priority;
		this.problem = problem;
		this.phone = phone;
		this.username = username;
	}

	public int getTid() {
		return tid;
	}

	public String getTitle() {
		return title;
	}

	public String getEmail() {
		return email;
	}

	public String getDepartment() {
		return department;
	}

	public String getPriority() {
		return priority;
	}

	public String getProblem() {
		return problem;
	}

	public int getPhone() {
		return phone;
	}

	public String getName() {
		return username;
	}

	
	

}
