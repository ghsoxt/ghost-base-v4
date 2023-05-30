function showNotifyItem(item, itemName, qtd, color, delay){
    var cssNotify = '#093500';
    if(color != ''){
        cssNotify = color;
    }

    item = item.replace('wbody|', 'wbody').replace('wammo|', 'wammo');

    var html =`
    <div class="notifyItem" style="border: 2px dashed ${cssNotify}88">
        <div class="contentItem">
            <span style="font-size: 10px">${qtd}x</span>
            <div class="titleItem">${itemName}</div>
            <img src="${imgItem}${item}.png">
        </div>
    </div>`;
    $(html).appendTo("notifyItem").hide().fadeIn(1000).delay(delay).fadeOut(1000);
    setTimeout(function(){ $('#notifyNotifyItens').remove() }, (delay+2000));
}