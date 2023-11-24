package testebackend.testebackend.Model.Vagas;

public class VagasEntity {

    public String nomedavaga;

    public String descricaodavaga;

    public String nomedaempresa;

    public String nomedacidade;

    public VagasEntity(String nomedavaga, String descricaodavaga, String nomedaempresa, String nomedacidade) {
        this.nomedavaga = nomedavaga;
        this.descricaodavaga = descricaodavaga;
        this.nomedaempresa = nomedaempresa;
        this.nomedacidade = nomedacidade;
    }

}
