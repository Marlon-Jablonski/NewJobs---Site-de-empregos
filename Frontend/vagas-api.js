async function getVagas() {
    let response = await fetch("http://localhost:8080/vagas");
    let vagas = await response.json();

    return vagas;
}

getVagas().then(vagas => vagas.forEach(vaga => {
    let linha = document.getElementById("linha");

    linha.innerHTML += "<div class='col'><div class='card' style='width: 310px; height: 350px; background-color: #f3f3f3;'><div class='card-body'><h5 class='card-title'>" + vaga.nomedavaga + "</h5>  <p class='card-text'> "
    + vaga.descricaodavaga + " </p> </div><ul class='list-group list-group-flush'><li  style= 'background-color: #f3f3f3;' class='list-group-item'>"
    + vaga.nomedacidade + "</li><li style= 'background-color: #f3f3f3;' class='list-group-item'>" + vaga.nomedaempresa + "</li></ul><a href='#' class='btn btn-primary'>Candidatar se</a></div></div>";

}));
