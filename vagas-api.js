async function getVagas() {
    let response = await fetch("https://6510cd873ce5d181df5d81c0.mockapi.io/api/vagas/vagas");
    let vagas = await response.json();

    return vagas;
}

getVagas().then(vagas => vagas.forEach(vaga => {
    let linha = document.getElementById("linha");

    let coluna = document.createElement("div");
    //  adiciona a classe "col-4" ao elemento da coluna e "mb-3" para dar uma margem entre as linhas.
    coluna.classList.add("col-4", "mb-5");
    coluna.innerHTML = "<div class='card' style='width: 18rem;'><div class='card-body'><h5 class='card-title'>" + vaga.vaga + "</h5>  <p class='card-text'> " + vaga.descricao + " </p> </div><ul class='list-group list-group-flush'><li class='list-group-item'>" + vaga.cidade + "</li><li class='list-group-item'>" + vaga.empresa + "</li></ul><a href='#' class='btn btn-primary'>Candidatar se</a></div>";

    linha.appendChild(coluna);
    //adiciona uma coluna rescem cria a linha.
}));
