
let form_register = document.querySelector('.form_register');
let inputs = document.querySelectorAll('input[type=text],input[type=password],input[type=email]');
let spans_error = document.querySelectorAll('.error_msg');
let checkForm = true;
const disable_spans_error = function (){

    for(let i=0; i<spans_error.length;i++){
        spans_error[i].style.visibility = 'hidden';
    }

}

const check_require = function (element){
    if(element.value != '' && element.value.length < 5) {
        element.classList.add('input_error')
        element.nextElementSibling.style.visibility = 'visible';
        return false;
    }
    else if(element.value == ''){
        element.classList.remove('input_success')
        element.classList.remove('input_error')
        element.nextElementSibling.style.visibility = 'hidden';
        return false;
    }
    else {
        element.classList.remove('input_error')
        element.classList.add('input_success')
        element.nextElementSibling.style.visibility = 'hidden';
        return true;
    }
}

for (let i =0; i < inputs.length; i++){

    inputs[i].addEventListener('keyup',function (){
        check_require(this)
    })
}

form_register.addEventListener('submit',function (event){
    event.preventDefault();
    for (let i =0; i < inputs.length; i++) {
        checkForm = checkForm && check_require(inputs[i])
    }
    if(checkForm) form_register.submit();
})






disable_spans_error();
