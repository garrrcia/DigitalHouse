const express = require('express');
const petshop = require('./petshop');

const app = express();

//listar pets
app.get('/pets', ( req, res ) => {
    return res.send(petshop.listarPets());
});

app.post('/pets', (req, res) => {
    const novoPet = req.body;
    const petAdicionado = petshop.adicionarPet([novoPet]);

    if (!petAdicionado) {
        return res.status(400);
    }
    return petAdicionado;
})

app.get('/pets/:nome', (req, res) => {
    const { nome } = req.params;
    const petEncontrado = petshop.buscarPet(nome);

    if (!petEncontrado) {
        return res.status(400).json({
            error: 'Pet não foi encontrado'
        });
    }

    return res.json(petEncontrado);
})


app.listen(3000, () => {
    console.log('Servidor rodando!');
});

// console.log(petshop.listarPets());


