package testebackend.testebackend.Model.Login;

public class LoginEntity {

    public int usuario_id;
    public String token;


    public LoginEntity(int usuario_id, String token) {
        this.usuario_id = usuario_id;
        this.token = token;
    }

    public LoginEntity(){

    }

}
