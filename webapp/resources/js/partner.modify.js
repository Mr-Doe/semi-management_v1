async function getAccountNameFromServer(searchAccount) {
    try {
        const resp = await fetch('/syn/member/' + searchAccount);
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}

function showAccountName(result, searchAccount) {
    let searchList = document.querySelector('.pop_keywords');
    searchList.innerHTML = '';
    for (let i = 0; i < result.length; i++) {
        let html = '';
        if (searchList == result[i].name) {
            html = '';
        } else {
            html += `<a class="autocomp list-group-item list-group-item-action" style="border:0px">${result[i].name}</a>`;
        }
        searchList.innerHTML += html;
    }
}

document.getElementById('name').addEventListener('input', () => {
    const searchAccount = document.getElementById('name').value;

    getAccountNameFromServer(searchAccount).then(result => {
        if (result.length > 0) showAccountName(result, searchAccount);
    });
});

document.addEventListener('click', (e) => {
    const searchedName = e.target;

    if(searchedName.classList.contains('autocomp')) {
        document.getElementById('name').value = searchedName.innerText;
        document.querySelector('.pop_keywords').innerHTML = '';
        getAccountNameFromServer(searchedName.innerText).then(result => {
            if (result.length > 0) document.getElementById('uid').value = result[0].uid;
            console.log(document.getElementById('uid').value);
        });
    }
});