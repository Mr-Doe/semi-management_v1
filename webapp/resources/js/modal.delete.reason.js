document.querySelector('.btn-close').addEventListener('click', ()=> {
    const modal_window = document.getElementById('modal-window');
    modal_window.hidden = true;

    console.log(document.querySelector('.modal-footer input').value);
});

function show_modal_window(iid, classifi, vendor, forward) {
    document.getElementById('modal-window').hidden = false;
    
    const footer_btn = document.querySelector('.modal-footer button');
    footer_btn.setAttribute('formaction', forward);

    const footer_input = document.querySelectorAll('.modal-footer input');
    footer_input.forEach( (idx) => {
        if(idx.getAttribute('name') == 'iid') idx.setAttribute('value', iid);
        if(idx.getAttribute('name') == 'classifi') idx.setAttribute('value', classifi);
        if(idx.getAttribute('name') == 'vendor') idx.setAttribute('value', vendor);
    })

}