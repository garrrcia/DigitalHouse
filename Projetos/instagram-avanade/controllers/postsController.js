const { req } = require('express');
const { Post } = require('../models');

const postsController = { 
    index: async (req, res) => {
        const posts = await Post.findAll();

        return res.json(posts);
    },
    //para exibir todos os posts de 1 usuarios especifico através do id
    show: async(req, res) => {
        const { id } = req.params;

        const postsUsuario = await Post.findAll({
            where: {
                usuarios_id: id
            }
        });

        return res.json(postsUsuario);
    },
    create: async (req, res) => {
               /*  texto: Datatypes.STRING,
            img: Datatypes.STRING,
            usuarios_id: Datatypes.INTEGER,
            n_likes: Datatypes.INTEGER */
        const {texto, img, usuarios_id} = req.body;

       const novoPost = Post.create({
            texto,
            img,
            usuarios_id,      
        });

        return res.json(novoPost);
    },
    update: async (req, res ) => {
        const { id } = req.params;
        const { texto, img, usuarios_id } = req.body;

       const postAtualizado = Post.update({
        texto,
        img,
        usuarios_id,
       }, {
           where: { id }
       })
        
        //return res.send(postAtualizado);
        return res.json(postAtualizado);
    },
    delete: async (req, res) => {
        const { id } = req.params;

        const postDeletado = Post.destroy({
            where: { id }
        });

        return res.json(postDeletado);
    }   
}

module.exports = postsController;