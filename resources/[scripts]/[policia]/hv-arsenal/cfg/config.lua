------------------------------------------------------------------------------------------------------------------------
-- GENERAL CONFIG
------------------------------------------------------------------------------------------------------------------------
local config = {}

config.token = '' -- [ Insira o token informado pela loja ] 
------------------------------------------------------------------------------------------------------------------------
-- GLOBAL PERMSSION 
------------------------------------------------------------------------------------------------------------------------
config.permission = 'policia.permissao' -- [ Insira a permissão necessária para acessar o arsenal ] 

config.display = {
    ['name'] = 'ALIEN ARSENAL', ---- [ Insira o nome do arsenal ] 
    ['background'] = '' ---- [ Insira o link do background do arsenal (670x375) ] 
} 

config.webhook = { -- [ Insira os webhooks para cada funcionalidade ]
    ['shield'] = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
    ['food'] = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
    ['reload'] = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
    ['equip'] = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
    ['clear'] = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
}

config.imagesHost = 'http://localhost/hv-arsenal' -- Insira o endereço de onde seus icones dos itens estão hospedados

config.shieldTime = 5 -- [ Insira o intervalo em MINUTOS para pegar O COLETE ] 

config.foodTime = 30 ---- [ Insira o intervalo em MINUTOS para pegar O KIT REFEIÇÃO ] 

config.reloadTime = 5 -- [ Insira o intervalo em MINUTOS para RECARREGAR O ARMAMENTO ] 
------------------------------------------------------------------------------------------------------------------------
-- BLIPS CDS
------------------------------------------------------------------------------------------------------------------------
config.position = {
    -- PMCDE
    vector3(-948.16,-2042.29,9.41), -- [ Alien ] 
   
}
------------------------------------------------------------------------------------------------------------------------
-- FOOD KIT
------------------------------------------------------------------------------------------------------------------------
config.foodKit = { -- [ Insira o nome do item e a quantidade desejada ] 
    ['energetico'] = 4,
    ['bandagem'] = 2,
}
------------------------------------------------------------------------------------------------------------------------
-- LIST WEAPONS
------------------------------------------------------------------------------------------------------------------------
config.comunicator = 'radio' --[ Insira o spawn do rádio comunicado caso utilize no arsenal ]

config.guns = { 
    ['WEAPON_NIGHTSTICK'] = { -- [ Spawn da arma ]
        ['displayName'] = 'Cassetete', -- [ Nome da arma ]
        ['ammoType'] = 'GERAL', -- [ Tipo de munição ] 
        ['ammoRecived'] = 0, -- [ Quantidade de munições ]
        ['block_time'] = 5, -- [ Temporizador (minutos) ]
        ['group'] = 'GERAL' -- [ Grupo em que a arma pertence ] 
    },
    ['WEAPON_STUNGUN'] = {
        ['displayName'] = 'Pistola de Choque', 
        ['ammoType'] = 'GERAL', 
        ['ammoRecived'] = 0, 
        ['block_time'] = 5,
        ['group'] = 'GERAL'
    },
    ['WEAPON_COMBATPISTOL'] = {
        ['displayName'] = 'Pistola de Combate', 
        ['ammoType'] = 'GERAL', 
        ['ammoRecived'] = 100, 
        ['block_time'] = 5,
        ['group'] = 'GERAL'
    },
    ['WEAPON_COMBATPDW'] = {
        ['displayName'] = 'MP5', 
        ['ammoType'] = 'GERAL', 
        ['ammoRecived'] = 150, 
        ['block_time'] = 5,
        ['group'] = 'GERAL'
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['displayName'] = 'M4A1 SPECIAL', 
        ['ammoType'] = 'GERAL', 
        ['ammoRecived'] = 150, 
        ['block_time'] = 5,
        ['group'] = 'GERAL'
    },
    ['WEAPON_SPECIALCARBINE_MK2'] = {
        ['displayName'] = 'M4A1 SPECIAL MK2', 
        ['ammoType'] = 'GERAL', 
        ['ammoRecived'] = 150, 
        ['block_time'] = 5,
        ['group'] = 'GERAL'
    },

}

return config