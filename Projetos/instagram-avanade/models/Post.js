module.exports = (sequelize, Datatypes) => {
    
    const Post = sequelize.define(
        "Post", {
            texto: Datatypes.STRING,
            img: Datatypes.STRING,
            usuarios_id: Datatypes.INTEGER,
            n_likes: Datatypes.INTEGER
        }, {
            tableName: "posts",
            timestamps: false
        }       
    );

    Post.associate = (models) => {
        // Relação N:1 - varios posts para 1 usuario
        Post.belongsTo(models.Usuario, {as: "usuarios", foreignKey: "usuarios_id"});
        // Relação 1:N - post tem varios comentarios
        Post.hasMany(models.Comentario, { as: "comentarios",foreignKey: "posts_id "});
        //relaçao N:M - post tem curtida de varios usuarios
           Post.belongsToMany(models.Usuario, {
               as: "curtiu", //alias da relação
               through: "curtidas",  //tabela intermediaria
               foreignKey:"posts_id",
               otherKey:  "usuarios_id",
               timestamps: false
           })
    }

    return Post;
}
