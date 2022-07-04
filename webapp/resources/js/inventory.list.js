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
    let vendorBoxList = document.querySelector('.btn-group');
    vendorBoxList.innerHTML = '';
    let html = '';
    for (let i = 0; i < result.length; i++) {
        if (result[i].vendor == supplier) {
            html += `<button class="vendor-list btn btn-primary" value="${result[i].vendor}">${result[i].vendor_name}</button>`;
        } else {
            html += `<button class="vendor-list btn btn-outline-primary" value="${result[i].vendor}">${result[i].vendor_name}</button>`;
        }
    }
    vendorBoxList.innerHTML += html;
}

function makeInventoryListButton(classification) {
    getVendorListFromServer(classification).then(result => {
        if (result.length > 0) {
            showVendorList(result);
        } else {
            alert('"VENDOR" 리스트 버튼을 표시 할 내용이 없습니다!')
        }
    });
}

async function getInventoryListFromServer(vendor) {
    try {
        const resp = await fetch('/syn/invtlist' + `/${classification}` + `/${vendor}`);
        const inventoryList = await resp.json();
        return inventoryList;
    } catch (error) {
        console.log(error);
    }
}

function makeInventoryList(vendor) {
    getInventoryListFromServer(vendor).then(result => {
        const inventoryList = document.querySelectorAll('.list-group')[0];
        inventoryList.innerHTML = '';
        let html = '';
        for (let i = 0; i < result.length; i++) {
            html += `<a href="/invt/detail?iid=${result[i].iid}" class="text-decoration-none mt-1">
                    <div class="list-group list-group-horizontal" style="position: relative">
                        <div class="form-floating col-3">
                            <div type="text" class="form-control">${result[i].serial}</div>
                            <label>Serial Number</label>
                        </div>

                        <div class="form-floating col-2">
                            <div type="text" class="form-control">${result[i].naming}</div>
                            <label>Naming</label>
                        </div>

                        <form class="form-floating col-2" action="/pnr/detail">
                            <input value="${result[i].pid }" name="pid" hidden>
						    <button class="list-group-item btn btn-outline-light text-start form-control">${result[i].pnr_name }</button>
						    <label>Partner</label>
                        </form>

                        <div class="form-floating col-5" style="width: 35%;">
                            <div class="form-control">${result[i].addr}</div>
                            <label>Location</label>
                        </div>

                        <div style="position: absolute; right: 0; top: 50%; transform: translate(0, -50%);">
                            <form>
                                <input type="text" value="${result[i].iid }" name="iid" hidden>
                                <input type="text" value="${result[i].classifi }" name="classifi" hidden>
                                <input type="text" value="${result[i].vendor }" name="vendor" hidden>
                                <button type="submit" formaction="/invt/mod" class="btn btn-outline-warning" style="width: 40px;"><i class="bi bi-pencil-fill"></i></button>
                                <button type="submit" formaction="/invt/remove" class="btn btn-outline-danger" style="width: 40px;"><i class="bi bi-trash3"></i></button>
                            </form>
                        </div>
                    </div>
                </a>`;
        }
        inventoryList.innerHTML += html;
    });
}

document.addEventListener('click', (e) => {
    const clickedButton = e.target;

    if(clickedButton.classList.contains('vendor-list')) {
        let activedButton = '';
        document.querySelectorAll('.vendor-list').forEach( (idx) => {
            if(idx.classList.contains('btn-primary')) {
                activedButton = idx;
            }
        });

        clickedButton.className = 'vendor-list btn btn-primary';
        activedButton.className = 'vendor-list btn btn-outline-primary';

        const vendor = clickedButton.getAttribute('value');
        makeInventoryList(vendor);
    }else if(clickedButton.classList.contains('btn-outline-danger')) {
        updateAvailed
    }else {

    }
});