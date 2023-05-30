function list_items(data) {
    $('#weapon-list').html(`
        ${data.map((item) => (`
            <div class="item"
            data-item-index="${item.index}"
            data-item-name="${item.displayName}"
            data-item-group="${item.group}"
            data-item-type="${item.ammoType}"
            data-item-weight="${item.gunWeight}"
            data-item-ammo_clip="${item.clipSize}"
            data-item-ammo_recived="${item.ammoRecived}"
            data-item-damage="${item.gunInfos.damage}"
            data-item-precision="${item.gunInfos.precision}"
            data-item-range="${item.gunInfos.range}"
            data-item-time="${item.block_time}"

            style="background-image: url('${hostImages}/${item.index}.png');">
                <div class="item-header">
                    <p>${item.group}</p>
                    <p>
                        <img class="target-img">
                        ${item.ammoType}

                        <img class="weight-img">
                        ${item.gunWeight} Kg
                    </p>
                </div>
                <div class="item-bottom">
                    <p>${item.displayName}</p>
                    <p>${item.ammoRecived}
                        <img class="ammo-img">
                    </p>
                </div>
            </div>
        `)).join('')}
    `);
}

function showWeapon(data) {
    $('#weapon-show').html(`
        <div class="show-header">
                <p>${data.itemName}</p> 
            <div class="subtitle">
                <div class="box-marker"></div>
                ${data.itemGroup}  
            </div>
        </div>
        <div class="show-middle">
            <img src="${hostImages}/${data.itemIndex}.png">
        </div>
        <div class="show-bottom">
            <div class="left-side">
            <div class="info-guns">
                <div class="container-info">
                <p><img class="target-img2"> ${data.itemWeight} Kg</p> 
                <p><img class="ammo-img2"> ${data.itemAmmo_clip} un</p> 
                <p><img class="weight-img2">${data.itemType}</p> 
                </div>
            </div>
            <div class="base-guns">
                <div class="container-info base"> 
                <div class="item-info">
                    <div class="name-info"><p>Dano</p> ${data.itemDamage}</div>
                    <div class="progress">
                    <div class="progress-value" style="width: ${data.itemDamage}%;"></div>
                    </div>
                </div>
                <div class="item-info">
                    <div class="name-info"><p>Precisão</p> ${data.itemPrecision}</div>
                    <div class="progress">
                    <div class="progress-value" style="width: ${data.itemPrecision}%;"></div>
                    </div>
                </div>
                <div class="item-info">
                    <div class="name-info"><p>Alcance</p> ${data.itemRange}</div>
                    <div class="progress">
                    <div class="progress-value" style="width: ${data.itemRange}%;"></div>
                    </div>
                </div>  
                </div>
            </div>
            </div>
                <div class="right-side">
                    <div class="container-info main-btn">
                        <div class="main-button" data-item-key="marmitex">MARMITEX  &nbsp<img class="marmitex-img"></div>
                        <div class="main-button" data-item-key="reload">RECARREGAR <img class="ammo-img"></div>
                    </div>
                    <div class="container-info main-btn">
                        <div class="main-button" data-item-key="shield">COLETE &nbsp<img class="shield-img"></div>
                        <div class="main-button" data-item-key="attach">ATTACHS <img class="target-img"></div>
                    </div>
                    <div class="container-info main-btn" style="width: 32%;">
                        Temporizador
                        <div class="block-time">${data.itemTime}:00 Min</div>
                        <div id="equip-weapon" class="main-button equip-button">EQUIPAR</div>
                    </div>
                </div>
            </div>
    `);
}

function innerHtml(data, job, weapons){

    if(data.background == "")
        data.background = "https://cdn.discordapp.com/attachments/1089634114623262883/1092276714656243832/1-removebg-preview_1.png"

    $('#action-menu').html(`
        <div id="box-main">
            <div id="header">
                <div class="title">
                    <p>${data.name}</p>
                    <div class="subtitle1"></div>
                </div>
                <div class="balance">
                    <div class="value">
                        <img
                        src="https://cdn.discordapp.com/attachments/830569806683439115/902920308900642826/outline_badge_white_24dp.png">
                        <p>${job}</p>
                        <img id="clearWeapons" class="clear-img">
                    </div>
                </div>
            </div>
            <div id="container">
                <div id="weapon-list"></div>

                <div id="weapon-show">
                    <div class="show-header"></div>
                    <div class="show-middle">
                        <img src="${data.background}"
                            style="opacity: 0.2;">
                    </div>
                    <div class="show-bottom">
                        <div class="left-side"></div>
                        <div class="right-side"></div>
                    </div>
                </div>
            </div>
        </div>
    `);
    list_items(weapons);
}

function createNotify(type, message) {

    if (type == "sucesso") type = "linear-gradient(to right, #00b09b, #96c93d)";
    else if (type == "aviso") type = "linear-gradient(to right, #b04100, #c9b23d)";
    else if (type == "negado") type = "linear-gradient(to right, #b00000, #c9543d)";

    Toastify({
        text: message,
        duration: 2600,
        close: true,
        gravity: "top", // `top` or `bottom`
        position: "right", // `left`, `center` or `right`
        stopOnFocus: true, // Prevents dismissing of toast on hover
        style: { background: type, },
        offset: { x: 0, y: 150 } // '2em'
    }).showToast();
}

let selected = "";
$(document).on("click", ".item", function () {
    $('.item').removeClass('selected');
    $(this).addClass('selected');
    selected = $(this).data();
    showWeapon(selected);
});

$(document).on("click", ".main-button", function () {
    let aux = $(this).data("itemKey");
    if(aux == "reload") $.post("http://hv-arsenal/hvReload", JSON.stringify({ index: selected.itemIndex }));
    else if(aux == "attach") $.post("http://hv-arsenal/hvAttach", JSON.stringify({ index: selected.itemIndex }));
    else if(aux == "marmitex") $.post("http://hv-arsenal/hvFood");
    else if(aux == "shield") $.post("http://hv-arsenal/hvArmour");
});

$(document).on("click", "#equip-weapon", function () {
    $.post("http://hv-arsenal/hvEquip", JSON.stringify({ 
        index: selected.itemIndex,
        ammo: selected.itemAmmo_recived
    }));
});

$(document).on("click", "#clearWeapons", function () {
    $.post("http://hv-arsenal/hvClear");
});

let hostImages = ''
$(document).ready(function () {
    window.addEventListener("message", function (event) {
        switch (event.data.action) {
            case "showMenu":
                hostImages = event.data.host;
                innerHtml(event.data.data, event.data.job, event.data.weapons);
                $("#action-menu").fadeIn(600);
                $("#action-menu").css({ "display": "none", "display": "flex" });
                break;

            case "hideMenu":
                $("#action-menu").fadeOut(600);
                $("#action-menu").css({ "display": "flex", "display": "none" });
                break;

            case "notifyMenu":
                createNotify(event.data.type, event.data.message);
                break;
        };
    });

    document.onkeyup = function (data) {
        if (data.which == 27)
            $.post("http://hv-arsenal/closeNui");
    }
});