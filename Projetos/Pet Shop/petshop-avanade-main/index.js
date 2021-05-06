const moment = require('moment');
const nomePetshop = "PETSHOP AVANADE";
const fs = require('fs');
let bancoDados = fs.readFileSync('./bancoDados.json');

let pets = bancoDados.pets;

const listarPets = () => {
    for (let pet of pets) {
        //template string
        console.log(`${pet.nome}, ${pet.idade}, ${pet.tipo}, ${pet.raca}`);

        for (const servico of pet.servicos) {
            console.log(`${servico.data} - ${servico.nome}`);
        }
    }
}
/* Crie uma função chamada **vacinarPet** que recebe um pet como 
parametro e altera o atributo **vacinado** para **true.**
Imprima uma mensagem avisando qual o pet foi vacinado */

const vacinarPet = pet => {
    if (!pet.vacinado) {
        pet.vacinado = true;
        console.log(`${pet.nome} foi vacinado com sucesso!`);
    } else {
        console.log(`Ops, ${pet.nome} já está vacinado!`);
    }
}

/* Crie uma nova função chamada **campanhaVacina** que percorre 
toda lista de pets e vacina todos os pets que precisam!
Imprima o numero de pets vacinados na campanha, exemplo:*/

const campanhaVacina = () => {
    console.log("Campanha de vacina 2020");
    console.log("vacinando...");

    let petVacinadosCampanha = 0;
    for (let pet of pets) {
        if (!pet.vacinado) {
            vacinarPet(pet);
            petVacinadosCampanha++;
        }
    }
    console.log(`${petVacinadosCampanha} pets foram vaciados nessa campanha!`);
};

/* Crie uma função chamada **adicionarPet** que adicione um novo cliente 
na lista, incluindo todos os atributos necessários.
Por ser um novo cliente, a lista de serviços realizados 
deve estar vazia*/

const adicionarPet = novoPet => {
    if (typeof novoPet == "object" && validarDados(novoPet)) {
        // adiciona o pet
        novoPet.nome = String(novoPet.nome);
        novoPet.idade = parseInt(novoPet.idade);

        if (!novoPet.servicos) {
            novoPet.servicos = [];
        }

        pets.push(novoPet);
    } else {
        console.log("Ops, insira um argumento valido!");
    }
}

const darBanhoPet = pet => {
    pet.servicos.push({
        'nome':'banho',
        'data': moment().format('DD-MM-YYYY')
    });
    console.log(`${pet.nome} está de banho tomado!`);
};

const tosarPet = pet => {
    pet.servicos.push({
        'nome':'tosa',
        'data': moment().format('DD-MM-YYYY')
    });
    console.log(`${pet.nome} está com cabelinho na régua :)`);
};

const apararUnhasPet = pet => {
    pet.servicos.push({
        'nome':'corte de unhas',
        'data': moment().format('DD-MM-YYYY')
    });
    console.log(`${pet.nome} está de unhas aparadas!`);
};

darBanhoPet(pets[0]);
darBanhoPet(pets[1]);
apararUnhasPet(pets[2]);

console.log("-----------")
listarPets();

// console.log(pets)