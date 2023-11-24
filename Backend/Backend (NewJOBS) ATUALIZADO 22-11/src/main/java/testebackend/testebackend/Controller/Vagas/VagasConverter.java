package testebackend.testebackend.Controller.Vagas;

import org.springframework.stereotype.Component;
import testebackend.testebackend.Model.Vagas.VagasEntity;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class VagasConverter {


    public static List<VagasDTO> toDTO(List<VagasEntity> entities) {

        return entities //
                .stream() //
                .map(entity -> new VagasDTO(entity.nomedavaga, entity.descricaodavaga, entity.nomedaempresa, entity.nomecidade)) //
                .collect(Collectors.toList());
    }

    public VagasDTO toDTO(VagasEntity entity) {
        return new VagasDTO(entity.nomedavaga, entity.descricaodavaga, entity.nomedaempresa, entity.nomecidade);
    }

    public VagasEntity toEntity(VagasDTO dto) {
        return new VagasEntity(dto.nomedavaga, dto.descricaodavaga, dto.nomedaempresa, dto.nomecidade);
    }

}
