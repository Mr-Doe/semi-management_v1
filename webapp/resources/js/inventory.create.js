async function getClassifiListFromServer() {
    try {
        const resp = await fetch('/syn/classifi');
        const classList = await resp.json();
        return await classList;
    } catch (error) {
        console.log(error);
    }
}

function showClassifiList(result) {
    let classBoxList = document.getElementById('classifiList');
    classBoxList.innerHTML = '';
    let html = "";
    for (let i = 0; i < result.length; i++) {
        html += `<div class="form-check"><input type="radio" class="form-check-input" name="classifi" value="${result[i].classifi}" required>${result[i].k_name}</div>`;
    }
    classBoxList.innerHTML += html;
}

function makeClassifiList() {
    getClassifiListFromServer().then(result => {
        if (result.length > 0) {
            showClassifiList(result);
        } else {
            alert('"CLASSIFI"를 표시 할 내용이 없습니다!')
        }
    });
}

function getCheckedClassifi() {
    const classifiList = document.getElementsByName('classifi');
    const checkedClassifi = "";

    classifiList.forEach((idx) => {
        if (idx.checked) checkedClassifi = idx.value;
    });

    return checkedClassifi;
}

async function getAutocompletePnr_name(searchData) {
    try {
        const resp = await fetch('/syn/auto/' + searchData);
        const autocompleteList = await resp.json();
        return autocompleteList;
    } catch (error) {
        console.log(error);
    }
}

function showAutocompleteList(result, searchData) {
    let autocompleteList = document.querySelector('.pop_keywords');
    autocompleteList.innerHTML = '';
    for (let i = 0; i < result.length; i++) {
        let html = '';
        if (searchData == result[i].pnr_name) {
            html = '';
        } else {
            html += `<a class="autocomp list-group-item list-group-item-action" style="border:0px">${result[i].pnr_name}</a>`;
        }
        autocompleteList.innerHTML += html;
    }
}

document.getElementById('pnr_name').addEventListener('input', () => {
    const searchData = document.getElementById('pnr_name').value;

    getAutocompletePnr_name(searchData).then(result => {
        if (result.length > 0) showAutocompleteList(result, searchData);
    });
});

document.addEventListener('click', (e) => {
    let selectSearchedData = e.target;

    if (selectSearchedData.classList[0] == 'autocomp') {
        document.getElementById('pnr_name').value = selectSearchedData.innerText;
        document.querySelector('.pop_keywords').innerHTML = '';
        getAutocompletePnr_name(selectSearchedData.innerText).then(result => {
            if (result.length > 0) document.getElementById('pid').value = result[0].pid;
        });
    }
});

async function getVendorListFromServer(classifi) {
    try {
        const resp = await fetch('/syn/vendor/' + classifi);
        const vendorList = await resp.json();
        return await vendorList;
    } catch (error) {
        console.log(error);
    }
}

function showVendorList(result) {
    let vendorBoxList = document.getElementById('vendorList');
    vendorBoxList.innerHTML = '';
    let html = '';
    for (let i = 0; i < result.length; i++) {
        html += `<div class="form-check"><input type="radio" class="form-check-input" name="vendor" value="${result[i].vendor}" required>${result[i].vendor_name}</div>`;
    }
    vendorBoxList.innerHTML += html;
}

function makeVendorList(classifi) {
    getVendorListFromServer(classifi).then(result => {
        if (result.length > 0) {
            showVendorList(result);
        } else {
            alert('"VENDOR"를 표시 할 내용이 없습니다!')
        }
    });
}

document.addEventListener('change', (e) => {
    const chk = e.target;

    if (chk.getAttribute('name') == 'classifi') makeVendorList(chk.value);
});