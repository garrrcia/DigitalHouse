const { Usuario, Post, sequelize } = require('./models');

//Chamando com desestruturação
const { Op } = require('sequelize');


Post.findAll()
.then((resultado) => {
    console.table(resultado.map(user => user.toJSON()));
});

/*Chamando o Op(operador pelo método tradicional)
 const Sequelize = require('./models');
const Op = Sequelize.Op;
 */

/* Usuario.findAll()

.then((resultado) => {
    console.table(resultado.map(user => user.toJSON()));
});

Post.findAll()
.then((resultado) => {
    console.table(resultado.map(user => user.toJSON()));
});

Comentario.findAll()
.then((resultado) => {
    console.table(resultado.map(user => user.toJSON()));
});

// Buscar usuario usando findByPK, filtra por Primary Key

Usuario.findByPk(4)
.then((resultado) => {
    console.log(resultado.dataValues);
 });


 */

/*
Criando um usuário 
Usuario.create({
    nome:'Luiz Negrinho', 
    email: 'luiz@email.com',
    senha: '1234'
}).then((resultado) => {
    console.log(resultado.toJSON());
}); */

/* Usuario.bulkCreate([
    {nome: 'Luiz Negrinho', email: 'luiz@email.com', senha: '1234'},
    {nome:'Moara Queiroz', email: 'moara@email.com', senha: '4567'},
    {nome: 'Geisiane Martins', email: 'geisiane@email.com', senha: '1313'},
    {nome: 'Ludmylla', email: 'lud@email.com', senha: '5555'},
    {nome: 'Miguel Leite', email: 'miguel@email.com', senha: '9999'},
    {nome: 'Lenildo Lourenço', email: 'lenildo@email.com', senha: '6666'},
    {nome: 'Renata Garcia', email: 'renata@gmail.com', senha: '1992'},
],)
.then((resultado) => {
    console.log(resultado);
}); */

/* Usuario.update({
    email:'sergio@digitalhouse.com'},
    {where: {
        id: 2
    }
}).then((resultado) => {
    console.log(resultado);
}) */

/* 
Usuario.destroy({
    where: {
        id: 3
    }
}).then((resultado) => {
    console.log(resultado)
}) */

Usuario.findByPk(1, {
    include: [
        { association: "posts"}
    ]
})
.then((usuario) => {
    console.log(usuario.posts.map((post) => post.toJSON()));
  
})

