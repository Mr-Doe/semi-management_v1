document.addEventListener('click', (e) => {
    if(document.querySelector('#ts').innerText == "") window.location.replace('http://localhost:8088/');
});