// console.log('JS externo funcionou!')

// console.log(document) // traz a estrutura do documento html
// console.log(window)   // 


// alert('Seja bem vindo!') // mensagem para usuário

// let adulto = confirm('Você tem mais de 18 anos?') // retorna booleano

let nomeUsuario = prompt('Qual seu nome?') // retorna texto inserido pelo usuário

console.log(nomeUsuario)

let elementHeader = document.querySelector('.olaUsuario') //seleciona o elemento html

console.log(elementHeader)

elementHeader.innerText = `Olá, ${nomeUsuario}` // adiciona o nome informado pelo usuário a tag html de classe olaUsuario

let logo = document.getElementById('logo')

console.log(logo)

logo.style.color = "orange" // muda a cor de fonte do elemento logo 

let body = document.querySelector('body')
let header = document.querySelector('header')

darkMode = () => {
    // document.body.classList.toggle("dark-mode") // também funciona
    body.classList.toggle("dark-mode")
    header.classList.toggle("dark-mode")
}

iniciaModal = (modalID) => {
    if (localStorage.fecharModal !== modalID) {
        let modal = document.getElementById(modalID)
        if (modal) {
            modal.classList.add('mostrar')
            console.log(modal)
            modal.addEventListener('click', (e) => {
                if (e.target.id == modalID || e.target.className == 'fechar') {
                    modal.classList.remove('mostrar')
                    localStorage.fecharModal = modalID //armazena o evento no localStorage
                }
            })
        }
    }
}

//setInterval fica executando a cada periodo de tempo, setTimeout é só uma vez
setTimeout(() => {
      iniciaModal('modal-newsletter')  
}, 5000);

logo.addEventListener('click', () => iniciaModal('modal-newsletter'))


// document.querySelector("#btn-submit-contact").addEventListener("click", (evento) => {
//     evento.preventDefault() // cancelando o envio temporariamente

//     let nomeValue = document.querySelector("#input_nome").value
//     let emailValue = document.querySelector("#input_email").value

//     console.log(nomeValue)
//     console.log(emailValue)
// })

let formContact = document.querySelector("#form_contact")


const regEmail = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;


function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}

formContact.addEventListener("submit", (evento) => {
    // interrompento o envio do formulário
    evento.preventDefault()

    let nomeValue = document.querySelector("#input_nome").value
    let emailValue = document.querySelector("#input_email").value
    let textValue = document.querySelector("#input_mensagem").value
    let telefoneValue = document.querySelector("#input_telefone").value

    console.log("nome: " + nomeValue)
    console.log("email: " + emailValue)
    console.log("texto:" + textValue)

  
    // validar se todos os campos estão preenchidos
    if  ( ( nomeValue.length == 0 ) || ( emailValue.length == 0 ) || (textValue.length < 1) ){
        console.log("Formulário não enviado - Preencha todos os campos")
    }else {
        // validar se nome tem 2 ou mais caracteres
        if ( nomeValue.length <= 1 ) {
            console.log("O nome deve conter mais que 1 caracter")
            
            } else {
                // validar se telefone tem no mínimo 8 caracteres
                if ( telefoneValue.length <= 8 || !(isNumber(telefoneValue)) ){
                    console.log("O campo telefone deve conter no mínimo 8 'números'")
                }else {
                    // validar se o campo email tem @ (google - validação com regex)
                    if (  !(regEmail.test(String(emailValue.toLowerCase()))) ){
                        console.log("e-mail inválido")
                    }else{
                        console.log("Formulário Enviado!")
                        }
                }
           }       
    }
})

