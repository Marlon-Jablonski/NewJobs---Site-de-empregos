package testebackend.testebackend.Model.Usuario;

import testebackend.testebackend.ConnectionSingleton;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    public int getByUsuario(String usuario, String senha) {
        final String sql = "SELECT usuario_id FROM usuario WHERE usuario = ? and senha = ?";
        try (final PreparedStatement preparedStatement = ConnectionSingleton.getConnection().prepareStatement(sql)) {
            preparedStatement.setString(1, usuario);
            preparedStatement.setString(2, senha);

            try (final ResultSet resultadoPessoas = preparedStatement.executeQuery()) {
                if (!resultadoPessoas.next()) {
                    return -1 ;
                }

                int id = resultadoPessoas.getInt("usuario_id");


                return id;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
