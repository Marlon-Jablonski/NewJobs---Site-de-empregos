package testebackend.testebackend.Controller.Home;

public class HomeDTO {

    public String nomedavaga;

    public String descricaodavaga;

    public String nomedaempresa;

    public String nomedacidade;

    public HomeDTO(String nomedavaga, String descricaodavaga, String nomedaempresa, String nomedacidade) {
        this.nomedavaga = nomedavaga;
        this.descricaodavaga = descricaodavaga;
        this.nomedaempresa = nomedaempresa;
        this.nomedacidade = nomedacidade;
    }
}
