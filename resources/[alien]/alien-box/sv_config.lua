config = {}

config.token = "marsgay242"

config.chanceLendario = 1 -- 1% de chance
config.chanceEpico = 5    -- 6% de chance
config.chanceRaro = 15    -- 20% de chance
config.chanceNormal = 35  -- 33% de chance
config.chanceComum = 100  -- 40% de chance
                          -----------------
                          -- Total = 100% de chance
                          
config.imagesIP = "https://flushrp.com/img/box/"
config.precoBox = 25 --Quantas coins pra abrir uma BOX
config.precoPromoBox = 17 --Quantas coins pra abrir 6 BOX de uma vez

--AREA DOS COMANDOS
config.comandoAddCoins = 'addcoins'
config.permComandoAddCoins = 'administrador.permissao'
config.webhookAddCoins = "---------------------1082539118283722873/ey-563kFX7Z5isImTeUNK6-Sftr1fpqQy3NJRDQouICQfA7zwIc04_AkdSTGn6j_w-IU"

config.comandoTempoOnline = 'tempoon' --Comando retorna uma notify mostrando a quanto tempo que a pessoa está no servidor
config.comandoComprar = 'comprarbox'  --Comando compra 25 coins(1BOX) caso as configs abaixo estejam habilitadas
config.venderInGame = true --true: ativa / false: desativa
config.precoBoxInGame = 3000000 -- valor para comprar 25 coins, estipulei 3kk
config.webhookBuyInGame = "---------------------1082539229562810388/kPGvZfliQtCizJLIAl9ifE8M487BwGswPmU3IcxzIqrqIKnD0CERWHsYEW1lgBtj3T5O"

config.execute = false
config.prepare = {
    rewardShow = "raridade = 'Lendario' OR raridade = 'Epico' OR raridade = 'Raro'",
    tabelaTempoOn = "vrp_users",
    tabelaCoins = "vrp_users",
    tabelaVeiculos = "vrp_user_vehicles",
    vrpGerarPlaca = false,
    checkVeiculo = "SELECT * FROM vrp_user_vehicles WHERE vehicle = @vehicle AND user_id = @user_id",
    insertVeiculo = "INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle) VALUES(@user_id,@vehicle)",
}

return config 