package testebackend.testebackend.Controller.Home;

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
public class HomeController {

    @Autowired
    VagasDAO vagasDAO;
    @Autowired
    HomeConverter vagasConverter;

    @GetMapping("/vagas")
    public ResponseEntity <List<HomeDTO>> getVagas() throws SQLException {

        return ResponseEntity.ok(HomeConverter.toDTO(vagasDAO.getvagas()));
    }




}
