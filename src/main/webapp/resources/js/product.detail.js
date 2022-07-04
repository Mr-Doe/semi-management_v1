async function getRepliesListFromServer(pnoVal) {
    try {
        const resp = await fetch('/repl/list/' + pnoVal);
        const repliesList = await resp.json();
        return await repliesList;
    } catch (error) {
        console.log(error);
    }
}

function showRepliesList(result) {
    let replies = document.getElementById('repliesList');
    replies.innerHTML = '';
    for (let i = 0; i < result.length; i++) {
        let html = `<div class="input-group mb-3 mt-3">
        <button class="btn btn-outline-primary" type="button" disabled>${result[i].replier }</button>
        <input type="text" class="form-control" value="${result[i].reply}" disabled>
        <button class="btn btn-outline-success" type="button" disabled>${result[i].mod_at }</button>
        <button type="button" data-cno="${result[i].rno}" class="btn btn-sm btn-outline-warning replModBtn">%</button>
        <button type="button" data-cno="${result[i].rno}" class="btn btn-sm btn-outline-danger replDelBtn">x</button>
        </div>`;

        replies.innerHTML += html;
    }
}

function printRepliesList(pnoVal) {
    getRepliesListFromServer(pnoVal).then(result => {
        console.log(result, "test");
        if(result.length > 0) {
            showRepliesList(result);
        }else {
            console.log("eee?");
        }
    });
}

async function postRepliesToServer(rplyData) {
    try {
        const url = "/repl/reg";
        const config = {
            method : "post",
            headers : {
                'Context-Type' : 'application/json; charset=urf-8'
            },
            body : JSON.stringify(rplyData)
        }
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

document.getElementById('replyAddBtn').addEventListener('click', () => {
    const replyText = document.getElementById('replyText').value;
    if(replyText == null || replyText == '') {
        alert('댓글 내용을 입력해주세요!');
        return false;
    } else {
        let rplyData = {
            pno : pnoVal,
            replier : document.getElementById('Writer').innerText,
            reply : replyText
        }
        postRepliesToServer(rplyData).then(result => {
            if(result > 0) {
                alert('댓글 등록 성공!');
                document.getElementById('replyText').value = '';
            }
        })
    }
})

document.addEventListener('click', (e) => {
    if(e.target.classList.contains('replModBtn')) {
        let rnoVal = e.target.dataset.rno;
        let div = e.target.closest('div');
        let replyText = div.querySelector('#replyText').value;
        updateReplyToServer(rnoVal)
    }
})