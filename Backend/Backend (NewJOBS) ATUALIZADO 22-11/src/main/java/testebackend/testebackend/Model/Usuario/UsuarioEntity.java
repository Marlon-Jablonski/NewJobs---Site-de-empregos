package testebackend.testebackend.Model.Usuario;

public class UsuarioEntity {

    public String usuario;
    public String senha;

    public int id;

    public UsuarioEntity(int id, String usuario, String senha) {
        this.id = id;
        this.usuario = usuario;
        this.senha = senha;
    }

}
