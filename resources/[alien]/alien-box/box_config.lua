config = {}

config.addCoinTime = 60 --Tempo em minutos que vai adicionar coin para a pessoa, no caso 60 = 60 Minutos = 1 hora
config.geral = {
    name = "Always Box",
    nameCoins = "Always Coins",
    dataValidade = "12/31/2023 00:55:00",
}

config.box = {
    {
        box = 1, name= "Caixa 01", categorias = {
            {raridade = "Lendario", items = {
                {item = "rmodmonsterr34", type="carro", itemName="R34 Monster", qtd="1"},
                {item = "7kk", type="dinheiro", itemName="7kk", qtd="7000000"},
            }},
            {raridade = "Epico", items = {
                {item = "rmodmonstergt", type="carro", itemName="Mercedes Monster GT", qtd="1"},
                {item = "bmwm8gte", type="carro", itemName="BMW M8 GTE", qtd="1"},
                {item = "1kk", type="dinheiro", itemName="1kk", qtd="1000000"},
            }},
            {raridade = "Raro", items = {
                {item = "rmodsuprapandem", type="carro", itemName="Supra V2", qtd="1"},
                {item = "pounder2", type="carro", itemName="Pounder2 900kg", qtd="1"},
                {item = "africa", type="carro", itemName="Honda Africa Twin", qtd="1"},
                {item = "500k", type="dinheiro", itemName="500k", qtd="500000"},
            }},
            {raridade = "Normal", items = {
                {item = "dinheiro", type="dinheiro", itemName="250k Limpo", qtd="250000"},
                {item = "dinheiro-sujer", type="item", itemName="300k Sujo", qtd="300000"},
                {item = "dinheiro", type="dinheiro", itemName="350k Limpo", qtd="350000"},
                {item = "ak47mk2", type="arma", spawn = "wbody|WEAPON_ASSAULTRIFLE_MK2", itemName="AK-47 MK2", qtd="1"},
                {item = "fiveseven", type="arma", spawn = "wbody|WEAPON_PISTOL_MK2", itemName="Five Seven", qtd="1"},
                -- {item = "normal5", type="item", itemName="normal5", qtd="1"}
            }},
            {raridade = "Comum", items = {
                {item = "ak47mk2", type="arma", spawn = "wammo|WEAPON_ASSAULTRIFLE_MK2", itemName="M.AK-47 MK2", qtd="100"},
                {item = "fiveseven", type="arma", spawn = "wammo|WEAPON_PISTOL_MK2", itemName="M.Five Seven", qtd="100"},
                {item = "dinheiro", type="dinheiro", itemName="100k Limpo", qtd="100000"},
                {item = "dinheiro-sujer", type="item", itemName="150k Sujo", qtd="150000"},
                {item = "mochila", type="item", itemName="Mochila", qtd="2"},
                {item = "c4", type="item", itemName="C4", qtd="2"},
                {item = "vibrador", type="item", spawn = "vibrador", itemName="Vibrador", qtd="1"},
                {item = "cintaralho", type="item", itemName="Cintaralho", qtd="1"},
            }},
        },
    },
    {
        box = 2, name= "Caixa 02", categorias = {
            {raridade = "Lendario", items = {
                {item = "rmodmonsterr34", type="carro", itemName="R34 Monster", qtd="1"},
            }},
            {raridade = "Epico", items = {
                {item = "rmodmonstergt", type="carro", itemName="Mercedes Monster GT", qtd="1"},
                {item = "bmwm8gte", type="carro", itemName="BMW M8 GTE", qtd="1"},
                {item = "1kk", type="dinheiro", itemName="1kk", qtd="1000000"},
            }},
            {raridade = "Raro", items = {
                {item = "rmodsuprapandem", type="carro", itemName="Supra V2", qtd="1"},
                {item = "pounder2", type="carro", itemName="Pounder2 900kg", qtd="1"},
                {item = "africa", type="carro", itemName="Honda Africa Twin", qtd="1"},
                {item = "500k", type="dinheiro", itemName="500k", qtd="500000"},
            }},
            {raridade = "Normal", items = {
                {item = "dinheiro", type="dinheiro", itemName="250k Limpo", qtd="250000"},
                {item = "dinheiro-sujer", type="item", itemName="300k Sujo", qtd="300000"},
                {item = "ak47mk2", type="arma", spawn = "wbody|WEAPON_ASSAULTRIFLE_MK2", itemName="AK-47 MK2", qtd="1"},
                {item = "g36mk2", type="arma", spawn = "wbody|WEAPON_SPECIALCARBINE_MK2", itemName="G-36 MK2", qtd="1"},
                {item = "fiveseven", type="arma", spawn = "wbody|WEAPON_PISTOL_MK2", itemName="Five Seven", qtd="1"},
                -- {item = "normal5", type="item", itemName="normal5", qtd="1"}
            }},
            {raridade = "Comum", items = {
                {item = "dinheiro", type="dinheiro", itemName="100k Limpo", qtd="100000"},
                {item = "dinheiro-sujer", type="item", itemName="150k Sujo", qtd="150000"},
                {item = "ak47", type="arma", spawn = "wbody|WEAPON_ASSAULTRIFLE", itemName="AK-47", qtd="1"},
                {item = "g36", type="arma", spawn = "wbody|WEAPON_SPECIALCARBINE", itemName="G-36", qtd="1"},
                {item = "fajuta", type="arma", spawn = "wbody|WEAPON_SNSPISTOL", itemName="Pistola Fajuta", qtd="1"},
                {item = "cintaralho", type="item", itemName="Cintaralho", qtd="1"},
                -- {item = "comum6", type="item", itemName="comum6", qtd="1"},
                -- {item = "comum7", type="item", itemName="comum7", qtd="1"}
            }},
        },
    },
}
 
return config