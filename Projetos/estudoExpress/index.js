//const express = require('express');
//const app = express();

//para listar as funcções do modulo
//console.log(app);

const { response } = require('express');
const express = require('express');
const { uuid } = require('uuidv4');

const app = express();


app.use(express.json());

const projects = [];



app.get('/projects', (req, res) => {


     return res.json(projects);

});


app.post('/projects', (req, res) => {
    const { title , owner } = req.body;

    const project = {id: uuid(), title, owner};

    projects.push(project); //esse push irá jogar a criação de nosso projeto  para o nosso array

    return res.json(project); //sempre retorna o projeto recemcriado e nunca exibir a lista completa

    //console.log(title);
   //console.log(owner);
    
   /* return res.json([

        'Projeto 1',
        'Projeto 2',
        'Projeto 3'
    
       ]);*/

});

/* Antes de alterar o metodo PUT
app.put('/projects/:id', ( req, res ) => {

    const params = req.params;

    console.log(params);

    return res.json([
        'Projeto 4', 
        'Projeto 5',
        'Projeto 6', 
        'Projeto 10'
    ]);
}); */

app.put('/projects/:id', ( req, res ) => {

    const { id } = req.params;
    const { title, owner } = req.body;

    const projectIndex = projects.findIndex(project => project.id === id);

    if (projectIndex < 0) {
        return res.status(404).json({ error: 'projeto não encontrado'});

    }

    //agora que tenho o indice vou criar uma nova informação do projeto
    const project = {

        id, 
        title,
        owner,
    }

    projects[projectIndex] = project;

    return res.json(project);

});

app.delete('/projects/:id', ( req, res ) => {

    const { id } = req.params;
    const { title, owner } = req.body;

    const projectIndex = projects.findIndex(project => project.id === id);

    if (projectIndex < 0) {

        return res.status(404).json({ error: 'projeto não encontrado'});

    }

    projects.splice(projectIndex, 1); // apaga o indice que foi encontrado no vetor

    return res.status(204).send(); //exibe mensagem sem retorno

});

app.listen(3000);