module.exports = (sequelize, Datatypes) => {
    
    //define (nomeModel, colunas, config)
    const Comentario = sequelize.define(
        "Comentario", {
            texto: Datatypes.STRING,
            usuarios_id: Datatypes.INTEGER,
            posts_id: Datatypes.INTEGER
        }, {
            tableName: "comentarios",
            timestamps: false
        }
    );

    Comentario.associate = (models) => {
        Comentario.belongsTo(models.Post, { as: "post", foreignKey: "posts_id" })
    }

    return Comentario;
}