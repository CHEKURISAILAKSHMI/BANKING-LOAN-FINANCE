
import javax.print.DocFlavor.STRING;

@SuppressWarnings("unused")
public class User {
    
    String email;
    String code;

    public User() {
    	this.email=email;
    }

    public User(String email, String code) {
       
        this.email = email;
        this.code = code;
    }

   
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }

   

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    
}
