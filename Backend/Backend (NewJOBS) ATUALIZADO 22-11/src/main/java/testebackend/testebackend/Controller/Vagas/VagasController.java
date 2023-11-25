package testebackend.testebackend.Controller.Vagas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import testebackend.testebackend.Model.Vagas.VagasDAO;
import java.sql.SQLException;
import java.util.List;

@CrossOrigin("*")
@RestController
public class VagasController {

    @Autowired
    VagasDAO vagasDAO;
    @Autowired
    VagasConverter vagasConverter;

    @GetMapping("/vagas")
    public ResponseEntity <List<VagasDTO>> getVagas() throws SQLException {

        return ResponseEntity.ok(VagasConverter.toDTO(vagasDAO.getvagas()));
    }




}
