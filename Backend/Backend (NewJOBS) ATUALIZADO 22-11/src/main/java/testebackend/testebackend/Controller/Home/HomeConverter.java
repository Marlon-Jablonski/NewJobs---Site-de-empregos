package testebackend.testebackend.Controller.Home;

import org.springframework.stereotype.Component;
import testebackend.testebackend.Model.Vagas.VagasEntity;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class HomeConverter {


    public static List<HomeDTO> toDTO(List<VagasEntity> entities) {

        return entities //
                .stream() //
                .map(entity -> new HomeDTO(entity.nomedavaga, entity.descricaodavaga, entity.nomedaempresa, entity.nomedacidade)) //
                .collect(Collectors.toList());
    }

    public HomeDTO toDTO(VagasEntity entity) {
        return new HomeDTO(entity.nomedavaga, entity.descricaodavaga, entity.nomedaempresa, entity.nomedacidade);
    }

    public VagasEntity toEntity(HomeDTO dto) {
        return new VagasEntity(dto.nomedavaga, dto.descricaodavaga, dto.nomedaempresa, dto.nomedacidade);
    }

}
