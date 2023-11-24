async function getVagas() {
    let response = await fetch("http://localhost:8080/vagas");
    let vagas = await response.json();

    return vagas;
}

getVagas().then(vagas => vagas.forEach(vaga => {
    let linha = document.getElementById("linha");

    let coluna = document.createElement("div");
    //  adiciona a classe "col-4" ao elemento da coluna e "mb-3" para dar uma margem entre as linhas.
    coluna.classList.add("col-4", "mb-5");
    coluna.innerHTML = "<div class='card' style='width: 18rem;'><div class='card-body'><h5 class='card-title'>" + vaga.nomedavaga + "</h5>  <p class='card-text'> " + vaga.descricaodavaga + " </p> </div><ul class='list-group list-group-flush'><li class='list-group-item'>" + vaga.nomedacidade + "</li><li class='list-group-item'>" + vaga.nomedaempresa + "</li></ul><a href='#' class='btn btn-primary'>Candidatar se</a></div>";

    linha.appendChild(coluna);
    //adiciona uma coluna rescem cria a linha.
}));
