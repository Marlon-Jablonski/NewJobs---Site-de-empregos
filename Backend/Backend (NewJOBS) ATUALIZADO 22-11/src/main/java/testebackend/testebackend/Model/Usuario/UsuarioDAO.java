package testebackend.testebackend.Model.Usuario;
import org.springframework.stereotype.Component;
import testebackend.testebackend.ConnectionSingleton;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Component
public class UsuarioDAO {

    public UsuarioEntity getByUsuario(String usuario, String senha) {
        final String sql = "SELECT usuario_id FROM usuario WHERE usuario = ? and senha = ?";
        try (final PreparedStatement preparedStatement = ConnectionSingleton.getConnection().prepareStatement(sql)) {
            preparedStatement.setString(1, usuario);
            preparedStatement.setString(2, senha);

            try (final ResultSet resultadeUsuarios = preparedStatement.executeQuery()) {
                if (!resultadeUsuarios.next()) {
                    return null;
                }

                UsuarioEntity usuario1 = new UsuarioEntity();
                usuario1.id = resultadeUsuarios.getInt(1);
                usuario1.usuario = resultadeUsuarios.getString(2);
                usuario1.senha = resultadeUsuarios.getString(3);

                return usuario1;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
