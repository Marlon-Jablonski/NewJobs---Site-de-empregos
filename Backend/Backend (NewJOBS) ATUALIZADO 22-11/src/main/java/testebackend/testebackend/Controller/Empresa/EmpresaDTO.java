package testebackend.testebackend.Controller.Empresa;

public class EmpresaDTO {

    public int id;

    public String nomecompleto;

    public String emailcandidato;

    public int contatocandidato;

    public EmpresaDTO(int id, String nomecompleto, String emailcandidato, int contatocandidato) {
        this.id = id;
        this.nomecompleto = nomecompleto;
        this.emailcandidato = emailcandidato;
        this.contatocandidato = contatocandidato;
    }

}
