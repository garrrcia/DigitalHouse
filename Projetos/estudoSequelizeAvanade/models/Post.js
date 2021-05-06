module.exports = (sequelize, Datatypes) => {
    
    const Post = sequelize.define(
        "Post", {
            texto: Datatypes.STRING(100),
            img: Datatypes.STRING(100),
            usuarios_id: Datatypes.INTEGER,
            n_likes: Datatypes.INTEGER
        }, {
            tableName: "posts",
            timeStamps: false
        }       
    );

    Post.associate = (models) => {
        Post.belongsTo(models.Usuario, {as: "usuarios", foreignKey: "usuarios_id"});
        
        Post.hasMany(models.Comentario, { as: "comentarios",foreignKey: "posts_id "});

        //relaçao N:M - usuario curte varios posts 
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

