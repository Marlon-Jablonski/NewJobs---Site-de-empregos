package testebackend.testebackend.Model.Candidato;

public class CandidatoEntity {

    public int id;

    public String nomedocandidato;

    public String emaildocandidato;

    public int numerodocandidato;

    public int datanasc;

    public int pretsalarial;

    public CandidatoEntity(int id, String nomedocandidato, String emailcandidato, int numerodocandidato, int datanasc, int pretsalarial) {
        this.id = id;
        this.nomedocandidato = nomedocandidato;
        this.emaildocandidato = emailcandidato;
        this.numerodocandidato = numerodocandidato;
        this.datanasc = datanasc;
        this.pretsalarial = pretsalarial;
    }
}
