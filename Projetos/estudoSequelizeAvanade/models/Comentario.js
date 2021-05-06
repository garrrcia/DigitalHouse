module.exports = (sequelize, Datatypes) => {
    
    //define (nomModel, colunas, config)
    const Comentario = sequelize.define(
        "Comentario", {
            texto: Datatypes.STRING,
            usuarios_id: Datatypes.INTEGER,
            posts_id: Datatypes.INTEGER
        }, {
            tableName: "comentarios",
            timeStamps: false
        }
    );

    return Comentario;
}