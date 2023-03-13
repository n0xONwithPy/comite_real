const formCadastro = document.getElementById('formCadastro');
const formContainer = document.querySelector('.form-container');
const closeForm = document.getElementById('closeForm');

    formCadastro.addEventListener('click', function(){
        formContainer.style.display = 'flex';

    closeForm.addEventListener('click', function(){
        formContainer.style.display = 'none';
    });
});