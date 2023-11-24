package testebackend.testebackend.Model.Empresa;

public class EmpresaEntity {

    public String nomedaempresa;

    public String emaildaempresa;

    public int cnpj;

    public int telefone;

    public EmpresaEntity(String nomedaempresa, String emaildaempresa, int cnpj, int telefone) {
        this.nomedaempresa = nomedaempresa;
        this.emaildaempresa = emaildaempresa;
        this.cnpj = cnpj;
        this.telefone = telefone;
    }


}
