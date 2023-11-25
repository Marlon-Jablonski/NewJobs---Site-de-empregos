package testebackend.testebackend.Model.Login;
import org.springframework.stereotype.Service;
import testebackend.testebackend.ConnectionSingleton;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@Service
public class LoginDAO {

    public void add(LoginEntity entity) throws SQLException{
        final String sql = "INSERT INTO login (token, Usuario_usuario_id) values (?, ?)";
        try (final PreparedStatement preparedStatement = ConnectionSingleton.getConnection().prepareStatement(sql)) {
            preparedStatement.setString(1, entity.token);
            preparedStatement.setInt(2, entity.usuario_id.id);
            preparedStatement.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    public boolean getToken(String token) {
        final String sql = "SELECT count(*) from login where token = ?";
        try (final PreparedStatement preparedStatement = ConnectionSingleton.getConnection().prepareStatement(sql)) {
            preparedStatement.setString(1, token);

            try (final ResultSet header = preparedStatement.executeQuery()) {
                header.next();
                return ((ResultSet) header).getBoolean(1);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
