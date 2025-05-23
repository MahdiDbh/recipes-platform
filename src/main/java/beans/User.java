package beans;


public class User {
	private int id;
    private String name;
    private String username;
    private String password;
    private String email;

    public User() {}

    public User(String name,String username ,String email, String password) {
    	this.username = username;
        this.name = name;
        this.email = email;
        this.password = password;
        
    }

    public User(String name,String username, String email, String password, int id) {
    	this.username = username;
    	this.name = name;
        this.name = name;
        this.email = email;
        this.password = password;
        this.id = id;
    }

    // Getters and setters
    public int getId() { return id; }
    public String getEmail() { return email; }
    public String getName() { return name; }
    public String getPassword() { return password; }
    public String getUsername() { return username; }

    public void setId(int id) { this.id = id; }
    public void setEmail(String email) { this.email = email; }
    public void setName(String name) { this.name = name; }
    public void setPassword(String password) { this.password = password; }
    public void setUsername(String username) { this.username = username; }

	
}