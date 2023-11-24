package testebackend.testebackend.Controller.Vagas;

public class VagasDTO {

    public String nomedavaga;

    public String descricaodavaga;

    public String nomedaempresa;

    public String nomecidade;

    public VagasDTO(String nomedavaga, String descricaodavaga, String nomedaempresa,String nomecidade) {
        this.nomedavaga = nomedavaga;
        this.descricaodavaga = descricaodavaga;
        this.nomedaempresa = nomedaempresa;
        this.nomecidade = nomecidade;
    }
}
