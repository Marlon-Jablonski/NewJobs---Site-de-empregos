package testebackend.testebackend.Controller.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import testebackend.testebackend.Model.Login.LoginDAO;
import testebackend.testebackend.Model.Login.LoginEntity;
import testebackend.testebackend.Model.Usuario.UsuarioDAO;
import testebackend.testebackend.Model.Usuario.UsuarioEntity;
import java.sql.SQLException;
import java.util.UUID;

@RestController
@RequestMapping("/login/")
public class LoginController {

    @Autowired
    public UsuarioDAO usuarioDAO;

    @Autowired
    public LoginDAO loginDAO;

    @PostMapping()
    @CrossOrigin(origins = "*")
    public ResponseEntity<String> postLogin(@RequestBody LoginDTO loginDTO) throws SQLException {
        UsuarioEntity usuarioExiste = usuarioDAO.getByUsuario(loginDTO.usuario, loginDTO.senha);

        if (usuarioExiste != null ){
            String token = UUID.randomUUID().toString();

            LoginEntity loginEntity = new LoginEntity();
            loginEntity.usuario_id = usuarioExiste;
            loginEntity.token = token;

            loginDAO.add(loginEntity);

            return ResponseEntity.ok().body(token);

        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }

}
