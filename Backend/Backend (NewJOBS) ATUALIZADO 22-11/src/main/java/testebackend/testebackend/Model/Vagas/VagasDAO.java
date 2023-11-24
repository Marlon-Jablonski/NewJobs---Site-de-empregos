package testebackend.testebackend.Model.Vagas;
import org.springframework.stereotype.Component;
import testebackend.testebackend.ConnectionSingleton;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class VagasDAO {

        public List<VagasEntity> getvagas() throws SQLException {
            List<VagasEntity> vagasEntityList = new ArrayList<>();

            String sql = "SELECT a.nomevaga, a.dsvaga, b.nomeempresa, d.nome_cidade FROM vagas a JOIN cadempresa b ON a.cadempresa_cadempresa_id = b.cadempresa_id JOIN endereco c ON b.endereco_endereco_id = c.endereco_id JOIN cidade d ON c.cidade_cidade_id = d.cidade_id;";
            try(PreparedStatement stmt = ConnectionSingleton.getConnection().prepareStatement(sql);
                ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {

                    String nomevaga = rs.getString("nomevaga");
                    String descricaodavaga = rs.getString("dsvaga");
                    String nomedaempresa = rs.getString("nomeempresa");
                    String nomecidade = rs.getString("nome_cidade");

                    vagasEntityList.add(new VagasEntity(nomevaga, descricaodavaga, nomedaempresa, nomecidade));
                }
                return vagasEntityList;
            }
        }


}
