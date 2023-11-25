package testebackend.testebackend.Controller.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import testebackend.testebackend.Model.Login.LoginDAO;
import testebackend.testebackend.Model.Login.LoginEntity;
import testebackend.testebackend.Model.Usuario.UsuarioDAO;
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
    public ResponseEntity<String> postLogin(@RequestBody LoginDTO dto) {

        // Verificar se o usuário existe
        int id = usuarioDAO.getByUsuario(dto.usuario, dto.senha);

        if (id == -1) {

            // Retornar 401
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();

        } else {

            // Gravar o token no banco
            String token = UUID.randomUUID().toString();
            LoginEntity entity = new LoginEntity();
            entity.token = token;
            entity.usuario_id = id;


            loginDAO.add(entity);


            // Retornar o token
            return ResponseEntity.ok().body(token);

        }
    }


}
