local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_garages", config)

------------------------------------------
----------------- CONFIG -----------------
------------------------------------------

config.detido = 10 -- taxa para ser paga quando o veiculo for detido (porcentagem do valor do veiculo)
config.seguradora = 5 -- taxa para ser paga quando o veiculo estiver apreendido (porcentagem do valor do veiculo)
config.use_tryFullPayment = true -- quando true, aceita pagamentos de taxas com o dinheiro do banco

config.dv_permission = "ac.permissao"              -- permissao para dv

config.guardar_veiculo_proximo = true -- mostrar botão de guardar veículo próximo
config.server_side_check = true -- checa se o veículo já foi retirado da garagem pelo player via server-side (o player não conseguirá retirar o veículo até guardá-lo novamente / DV)


config.multas = 120000 -------- Maximo de multas que o player pode ter, se tiver mais que isso nao consegue puxar o veiculo


----------------------------------------------
----------------- MARKERS --------------------
----------------------------------------------


--- TIPOS DE MARKERS (DEFINIDO NO ATRIBUTO MARKER DE CADA GARAGEM) ---
config.markers = {
	["avião"] = 33,
	["helicóptero"] = 34,
	["barco"] = 35,
	["carro"] = 36,
	["moto"] = 37,
	["bicicleta"] = 38,
	["truck"] = 39,
}

config.drawMarker = function(coords,marker) -- funcao para desenhar os markers das garagens no chão
	DrawMarker(36,coords,0,0,0,0,0,0,1.0,1.0,1.0,255, 255, 255,155,1,1,1,1)
	DrawMarker(27,coords.x,coords.y,coords.z-0.97,0,0,0,0,0,0,0.8,0.8,0.5,0, 0, 0,155,0,0,0,1)
	DrawMarker(27,coords.x,coords.y,coords.z-0.97,0,0,0,0,0,0,1.0,1.0,0.5,255, 255, 255,155,0,0,0,1)
end


-----------------------------------------
----------------- BLIPS -----------------
-----------------------------------------

config.showBlips = true -- quando true, mostra os blips das garagens públicas no mapa
config.blipId = 357 -- id do blip
config.blipColor = 2 -- cor do blip
config.blipSize = 0.5 -- tamanho do blip


----------------------------------------------
-------- DELETAR VEICULOS INATIVOS -----------
----------------------------------------------

config.reset = false -- quando true, deleta os veículos que estão parados durante um determinado tempo
config.tempoReset = 60 -- tempo para deletar um veículo inativo (em minutos)


-------------------------------------------
----------------- IMAGENS -----------------
-------------------------------------------

--[[


      __      _______  _____  ____  
     /\ \    / /_   _|/ ____|/ __ \ 
    /  \ \  / /  | | | (___ | |  | |
   / /\ \ \/ /   | |  \___ \| |  | |
  / ____ \  /   _| |_ ____) | |__| |
 /_/    \_\/   |_____|_____/ \____/ 


COLE A PASTA "imagens" deixada no .RAR que você baixou no seguinte local: C:\xampp\htdocs e coloque o IP da sua VPS na linha 96 desta config


FLUXO SHOP
FLUXO SHOP
FLUXO SHOP

]]

config.defaultImg = "https://svgsilh.com/svg/160895.svg" 
config.imgDir = "http://localhost/carros/" -- COLOQUE O IP DA SUA VPS AQUI  -- 


-----------------------------------------
----------- LISTA DE VEÍCULOS -----------
-----------------------------------------



config.vehList = {
	{ hash = -344943009, name = 'blista', price = 22000, banido = false, modelo = 'Blista', capacidade = 20, tipo = 'carros' },
	{ hash = 1549126457, name = 'brioso', price = 35000, banido = false, modelo = 'Brioso', capacidade = 30, tipo = 'carros' },
	{ hash = -1130810103, name = 'dilettante', price = 17000, banido = false, modelo = 'Dilettante', capacidade = 50, tipo = 'carros' },
	{ hash = -1177863319, name = 'issi2', price = 90000, banido = false, modelo = 'Issi2', capacidade = 50, tipo = 'carros' },
	{ hash = -431692672, name = 'panto', price = 12000, banido = false, modelo = 'Panto', capacidade = 50, tipo = 'carros' },
	{ hash = -1450650718, name = 'prairie', price = 27000, banido = false, modelo = 'Prairie', capacidade = 50, tipo = 'carros' },
	{ hash = 841808271, name = 'rhapsody', price = 10000, banido = false, modelo = 'Rhapsody', capacidade = 50, tipo = 'carros' },
	{ hash = 330661258, name = 'cogcabrio', price = 130000, banido = false, modelo = 'Cogcabrio', capacidade = 50, tipo = 'carros' },
	{ hash = -685276541, name = 'emperor', price = 7000, banido = false, modelo = 'Emperor', capacidade = 50, tipo = 'carros' },
	{ hash = -1883002148, name = 'emperor2', price = 50000, banido = false, modelo = 'Emperor 2', capacidade = 50, tipo = 'carros' },
	{ hash = -2095439403, name = 'phoenix', price = 250000, banido = false, modelo = 'Phoenix', capacidade = 50, tipo = 'carros' },
	{ hash = -1883869285, name = 'premier', price = 37000, banido = false, modelo = 'Premier', capacidade = 50, tipo = 'carros' },
	{ hash = 75131841, name = 'glendale', price = 70000, banido = false, modelo = 'Glendale', capacidade = 50, tipo = 'carros' },
	{ hash = 886934177, name = 'intruder', price = 11000, banido = false, modelo = 'Intruder', capacidade = 50, tipo = 'carros' },
	{ hash = -5153954, name = 'exemplar', price = 80000, banido = false, modelo = 'Exemplar', capacidade = 50, tipo = 'carros' },
	{ hash = -591610296, name = 'f620', price = 55000, banido = false, modelo = 'F620', capacidade = 50, tipo = 'carros' },
	{ hash = -391594584, name = 'felon', price = 70000, banido = false, modelo = 'Felon', capacidade = 50, tipo = 'carros' },
	{ hash = -1289722222, name = 'ingot', price = 160000, banido = false, modelo = 'Ingot', capacidade = 50, tipo = 'carros' },
	{ hash = -624529134, name = 'jackal', price = 60000, banido = false, modelo = 'Jackal', capacidade = 50, tipo = 'carros' },
	{ hash = 1348744438, name = 'oracle', price = 28000, banido = false, modelo = 'Oracle', capacidade = 50, tipo = 'carros' },
	{ hash = -511601230, name = 'oracle2', price = 80000, banido = false, modelo = 'Oracle2', capacidade = 50, tipo = 'carros' },
	{ hash = 1349725314, name = 'sentinel', price = 50000, banido = false, modelo = 'Sentinel', capacidade = 50, tipo = 'carros' },
	{ hash = 873639469, name = 'sentinel2', price = 60000, banido = false, modelo = 'Sentinel2', capacidade = 50, tipo = 'carros' },
	{ hash = 1581459400, name = 'windsor', price = 150000, banido = false, modelo = 'Windsor', capacidade = 50, tipo = 'carros' },
	{ hash = -1930048799, name = 'windsor2', price = 170000, banido = false, modelo = 'Windsor2', capacidade = 50, tipo = 'carros' },
	{ hash = -1122289213, name = 'zion', price = 50000, banido = false, modelo = 'Zion', capacidade = 50, tipo = 'carros' },
	{ hash = -1193103848, name = 'zion2', price = 60000, banido = false, modelo = 'Zion2', capacidade = 50, tipo = 'carros' },
	{ hash = -1205801634, name = 'blade', price = 110000, banido = false, modelo = 'Blade', capacidade = 50, tipo = 'carros' },
	{ hash = -682211828, name = 'buccaneer', price = 130000, banido = false, modelo = 'Buccaneer', capacidade = 50, tipo = 'carros' },
	{ hash = -1013450936, name = 'buccaneer2', price = 260000, banido = false, modelo = 'Buccaneer2', capacidade = 50, tipo = 'carros' },
	{ hash = -1150599089, name = 'primo', price = 9500, banido = false, modelo = 'Primo', capacidade = 50, tipo = 'carros' },
	{ hash = -2040426790, name = 'primo2', price = 200000, banido = false, modelo = 'Primo2', capacidade = 10, tipo = 'work' },
	{ hash = 349605904, name = 'chino', price = 130000, banido = false, modelo = 'Chino', capacidade = 50, tipo = 'carros' },
	{ hash = -1361687965, name = 'chino2', price = 200000, banido = false, modelo = 'Chino2', capacidade = 10, tipo = 'work' },
	{ hash = 784565758, name = 'coquette3', price = 195000, banido = false, modelo = 'Coquette3', capacidade = 50, tipo = 'carros' },
	{ hash = 80636076, name = 'dominator', price = 230000, banido = false, modelo = 'Dominator', capacidade = 50, tipo = 'carros' },
	{ hash = 915704871, name = 'dominator2', price = 230000, banido = false, modelo = 'Dominator2', capacidade = 50, tipo = 'carros' },
	{ hash = 723973206, name = 'dukes', price = 150000, banido = false, modelo = 'Dukes', capacidade = 50, tipo = 'carros' },
	{ hash = -2119578145, name = 'faction', price = 150000, banido = false, modelo = 'Faction', capacidade = 50, tipo = 'carros' },
	{ hash = -1790546981, name = 'faction2', price = 200000, banido = false, modelo = 'Faction2', capacidade = 10, tipo = 'work' },
	{ hash = -2039755226, name = 'faction3', price = 350000, banido = false, modelo = 'Faction3', capacidade = 50, tipo = 'carros' },
	{ hash = -1800170043, name = 'gauntlet', price = 165000, banido = false, modelo = 'Gauntlet', capacidade = 50, tipo = 'carros' },
	{ hash = 349315417, name = 'gauntlet2', price = 165000, banido = false, modelo = 'Gauntlet2', capacidade = 50, tipo = 'carros' },
	{ hash = 15219735, name = 'hermes', price = 280000, banido = false, modelo = 'Hermes', capacidade = 50, tipo = 'carros' },
	{ hash = 37348240, name = 'hotknife', price = 180000, banido = false, modelo = 'Hotknife', capacidade = 50, tipo = 'carros' },
	{ hash = 525509695, name = 'moonbeam', price = 220000, banido = false, modelo = 'Moonbeam', capacidade = 50, tipo = 'carros' },
	{ hash = 1896491931, name = 'moonbeam2', price = 250000, banido = false, modelo = 'Moonbeam2', capacidade = 50, tipo = 'carros' },
	{ hash = -1943285540, name = 'nightshade', price = 270000, banido = false, modelo = 'Nightshade', capacidade = 50, tipo = 'carros' },
	{ hash = 1507916787, name = 'picador', price = 150000, banido = false, modelo = 'Picador', capacidade = 50, tipo = 'carros' },
	{ hash = -227741703, name = 'ruiner', price = 150000, banido = false, modelo = 'Ruiner', capacidade = 50, tipo = 'carros' },
	{ hash = -1685021548, name = 'sabregt', price = 260000, banido = false, modelo = 'Sabregt', capacidade = 50, tipo = 'carros' },
	{ hash = 223258115, name = 'sabregt2', price = 150000, banido = false, modelo = 'Sabregt2', capacidade = 50, tipo = 'carros' },
	{ hash = -1745203402, name = 'gburrito', price = 200000, banido = false, modelo = 'GBurrito', capacidade = 10, tipo = 'work' },
	{ hash = 729783779, name = 'slamvan', price = 180000, banido = false, modelo = 'Slamvan', capacidade = 50, tipo = 'carros' },
	{ hash = 833469436, name = 'slamvan2', price = 200000, banido = false, modelo = 'Slamvan2', capacidade = 10, tipo = 'work' },
	{ hash = 1119641113, name = 'slamvan3', price = 230000, banido = false, modelo = 'Slamvan3', capacidade = 50, tipo = 'carros' },
	{ hash = 1923400478, name = 'stalion', price = 150000, banido = false, modelo = 'Stalion', capacidade = 50, tipo = 'carros' },
	{ hash = -401643538, name = 'stalion2', price = 150000, banido = false, modelo = 'Stalion2', capacidade = 50, tipo = 'carros' },
	{ hash = 972671128, name = 'tampa', price = 170000, banido = false, modelo = 'Tampa', capacidade = 50, tipo = 'carros' },
	{ hash = -825837129, name = 'vigero', price = 170000, banido = false, modelo = 'Vigero', capacidade = 50, tipo = 'carros' },
	{ hash = -498054846, name = 'virgo', price = 150000, banido = false, modelo = 'Virgo', capacidade = 50, tipo = 'carros' },
	{ hash = -899509638, name = 'virgo2', price = 250000, banido = false, modelo = 'Virgo2', capacidade = 50, tipo = 'carros' },
	{ hash = 16646064, name = 'virgo3', price = 180000, banido = false, modelo = 'Virgo3', capacidade = 50, tipo = 'carros' },
	{ hash = 2006667053, name = 'voodoo', price = 220000, banido = false, modelo = 'Voodoo', capacidade = 50, tipo = 'carros' },
	{ hash = 523724515, name = 'voodoo2', price = 220000, banido = false, modelo = 'Voodoo2', capacidade = 50, tipo = 'carros' },
	{ hash = 1871995513, name = 'yosemite', price = 350000, banido = false, modelo = 'Yosemite', capacidade = 50, tipo = 'carros' },
	{ hash = 1126868326, name = 'bfinjection', price = 80000, banido = false, modelo = 'Bfinjection', capacidade = 50, tipo = 'carros' },
	{ hash = -349601129, name = 'bifta', price = 190000, banido = false, modelo = 'Bifta', capacidade = 50, tipo = 'carros' },
	{ hash = -1435919434, name = 'bodhi2', price = 170000, banido = false, modelo = 'Bodhi2', capacidade = 50, tipo = 'carros' },
	{ hash = -1479664699, name = 'brawler', price = 250000, banido = false, modelo = 'Brawler', capacidade = 50, tipo = 'carros' },
	{ hash = 101905590, name = 'trophytruck', price = 400000, banido = false, modelo = 'Trophytruck', capacidade = 50, tipo = 'carros' },
	{ hash = -663299102, name = 'trophytruck2', price = 400000, banido = false, modelo = 'Trophytruck2', capacidade = 50, tipo = 'carros' },
	{ hash = -1237253773, name = 'dubsta3', price = 300000, banido = false, modelo = 'Dubsta3', capacidade = 50, tipo = 'carros' },
	{ hash = -2064372143, name = 'mesa3', price = 200000, banido = false, modelo = 'Mesa3', capacidade = 50, tipo = 'carros' },
	{ hash = 1645267888, name = 'rancherxl', price = 220000, banido = false, modelo = 'Rancherxl', capacidade = 50, tipo = 'carros' },
	{ hash = -1207771834, name = 'rebel', price = 190000, banido = false, modelo = 'Rebel', capacidade = 100, tipo = 'work' },
	{ hash = -2045594037, name = 'rebel2', price = 190000, banido = false, modelo = 'Rebel2', capacidade = 100, tipo = 'carros' },
	{ hash = -1532697517, name = 'riata', price = 250000, banido = false, modelo = 'Riata', capacidade = 50, tipo = 'carros' },
	{ hash = 1770332643, name = 'dloader', price = 150000, banido = false, modelo = 'Dloader', capacidade = 50, tipo = 'carros' },
	{ hash = -667151410, name = 'ratloader', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = -1189015600, name = 'sandking', price = 400000, banido = false, modelo = 'Sandking', capacidade = 50, tipo = 'carros' },
	{ hash = 989381445, name = 'sandking2', price = 370000, banido = false, modelo = 'Sandking2', capacidade = 50, tipo = 'carros' },
	{ hash = -808831384, name = 'baller', price = 150000, banido = false, modelo = 'Baller', capacidade = 50, tipo = 'carros' },
	{ hash = 142944341, name = 'baller2', price = 160000, banido = false, modelo = 'Baller2', capacidade = 50, tipo = 'carros' },
	{ hash = 1878062887, name = 'baller3', price = 175000, banido = false, modelo = 'Baller3', capacidade = 50, tipo = 'carros' },
	{ hash = 634118882, name = 'baller4', price = 185000, banido = false, modelo = 'Baller4', capacidade = 50, tipo = 'carros' },
	{ hash = 470404958, name = 'baller5', price = 270000, banido = false, modelo = 'Baller5', capacidade = 50, tipo = 'carros' },
	{ hash = 666166960, name = 'baller6', price = 280000, banido = false, modelo = 'Baller6', capacidade = 50, tipo = 'carros' },
	{ hash = 850565707, name = 'bjxl', price = 110000, banido = false, modelo = 'Bjxl', capacidade = 50, tipo = 'carros' },
	{ hash = 2006918058, name = 'cavalcade', price = 110000, banido = false, modelo = 'Cavalcade', capacidade = 50, tipo = 'carros' },
	{ hash = -789894171, name = 'cavalcade2', price = 130000, banido = false, modelo = 'Cavalcade2', capacidade = 50, tipo = 'carros' },
	{ hash = 683047626, name = 'contender', price = 300000, banido = false, modelo = 'Contender', capacidade = 50, tipo = 'carros' },
	{ hash = 1177543287, name = 'dubsta', price = 210000, banido = false, modelo = 'Dubsta', capacidade = 50, tipo = 'carros' },
	{ hash = -394074634, name = 'dubsta2', price = 240000, banido = false, modelo = 'Dubsta2', capacidade = 50, tipo = 'carros' },
	{ hash = -1137532101, name = 'fq2', price = 110000, banido = false, modelo = 'Fq2', capacidade = 50, tipo = 'carros' },
	{ hash = -1775728740, name = 'granger', price = 345000, banido = false, modelo = 'Granger', capacidade = 50, tipo = 'carros' },
	{ hash = -1543762099, name = 'gresley', price = 150000, banido = false, modelo = 'Gresley', capacidade = 50, tipo = 'carros' },
	{ hash = 884422927, name = 'habanero', price = 110000, banido = false, modelo = 'Habanero', capacidade = 50, tipo = 'carros' },
	{ hash = 1221512915, name = 'seminole', price = 49000, banido = false, modelo = 'Seminole', capacidade = 50, tipo = 'carros' },
	{ hash = 1337041428, name = 'serrano', price = 150000, banido = false, modelo = 'Serrano', capacidade = 50, tipo = 'carros' },
	{ hash = 1203490606, name = 'xls', price = 150000, banido = false, modelo = 'Xls', capacidade = 50, tipo = 'carros' },
	{ hash = -432008408, name = 'xls2', price = 350000, banido = false, modelo = 'Xls2', capacidade = 50, tipo = 'carros' },
	{ hash = -1809822327, name = 'asea', price = 32000, banido = false, modelo = 'Asea', capacidade = 50, tipo = 'carros' },
	{ hash = -1903012613, name = 'asterope', price = 49000, banido = false, modelo = 'Asterope', capacidade = 50, tipo = 'carros' },
	{ hash = 906642318, name = 'cog55', price = 200000, banido = false, modelo = 'Cog55', capacidade = 10, tipo = 'work' },
	{ hash = 704435172, name = 'cog552', price = 400000, banido = false, modelo = 'Cog552', capacidade = 50, tipo = 'carros' },
	{ hash = -2030171296, name = 'cognoscenti', price = 280000, banido = false, modelo = 'Cognoscenti', capacidade = 50, tipo = 'carros' },
	{ hash = -604842630, name = 'cognoscenti2', price = 400000, banido = false, modelo = 'Cognoscenti2', capacidade = 50, tipo = 'carros' },
	{ hash = -1477580979, name = 'stanier', price = 18000, banido = false, modelo = 'Stanier', capacidade = 50, tipo = 'carros' },
	{ hash = 1723137093, name = 'stratum', price = 90000, banido = false, modelo = 'Stratum', capacidade = 50, tipo = 'carros' },
	{ hash = 1123216662, name = 'superd', price = 200000, banido = false, modelo = 'Superd', capacidade = 10, tipo = 'work' },
	{ hash = -1894894188, name = 'surge', price = 110000, banido = false, modelo = 'Surge', capacidade = 50, tipo = 'carros' },
	{ hash = -1008861746, name = 'tailgater', price = 110000, banido = false, modelo = 'Tailgater', capacidade = 50, tipo = 'carros' },
	{ hash = 1373123368, name = 'warrener', price = 90000, banido = false, modelo = 'Warrener', capacidade = 50, tipo = 'carros' },
	{ hash = 1777363799, name = 'washington', price = 130000, banido = false, modelo = 'Washington', capacidade = 50, tipo = 'carros' },
	{ hash = 767087018, name = 'alpha', price = 230000, banido = false, modelo = 'Alpha', capacidade = 50, tipo = 'carros' },
	{ hash = -1041692462, name = 'banshee', price = 300000, banido = false, modelo = 'Banshee', capacidade = 50, tipo = 'carros' },
	{ hash = 1274868363, name = 'bestiagts', price = 290000, banido = false, modelo = 'Bestiagts', capacidade = 50, tipo = 'carros' },
	{ hash = 1039032026, name = 'blista2', price = 55000, banido = false, modelo = 'Blista2', capacidade = 50, tipo = 'carros' },
	{ hash = -591651781, name = 'blista3', price = 80000, banido = false, modelo = 'Blista3', capacidade = 50, tipo = 'carros' },
	{ hash = -304802106, name = 'buffalo', price = 300000, banido = false, modelo = 'Buffalo', capacidade = 50, tipo = 'carros' },
	{ hash = 736902334, name = 'buffalo2', price = 300000, banido = false, modelo = 'Buffalo2', capacidade = 50, tipo = 'carros' },
	{ hash = 237764926, name = 'buffalo3', price = 300000, banido = false, modelo = 'Buffalo3', capacidade = 50, tipo = 'carros' },
	{ hash = 2072687711, name = 'carbonizzare', price = 290000, banido = false, modelo = 'Carbonizzare', capacidade = 50, tipo = 'carros' },
	{ hash = -1045541610, name = 'comet2', price = 250000, banido = false, modelo = 'Comet2', capacidade = 50, tipo = 'carros' },
	{ hash = -2022483795, name = 'comet3', price = 290000, banido = false, modelo = 'Comet3', capacidade = 50, tipo = 'carros' },
	{ hash = 661493923, name = 'comet5', price = 300000, banido = false, modelo = 'Comet5', capacidade = 50, tipo = 'carros' },
	{ hash = 108773431, name = 'coquette', price = 250000, banido = false, modelo = 'Coquette', capacidade = 50, tipo = 'carros' },
	{ hash = 196747873, name = 'elegy', price = 350000, banido = false, modelo = 'Elegy', capacidade = 50, tipo = 'carros' },
	{ hash = -566387422, name = 'elegy2', price = 355000, banido = false, modelo = 'Elegy2', capacidade = 50, tipo = 'carros' },
	{ hash = -1995326987, name = 'feltzer2', price = 255000, banido = false, modelo = 'Feltzer2', capacidade = 50, tipo = 'carros' },
	{ hash = -1089039904, name = 'furoregt', price = 290000, banido = false, modelo = 'Furoregt', capacidade = 50, tipo = 'carros' },
	{ hash = 499169875, name = 'fusilade', price = 210000, banido = false, modelo = 'Fusilade', capacidade = 50, tipo = 'carros' },
	{ hash = 2016857647, name = 'futo', price = 170000, banido = false, modelo = 'Futo', capacidade = 50, tipo = 'carros' },
	{ hash = -1297672541, name = 'jester', price = 150000, banido = false, modelo = 'Jester', capacidade = 50, tipo = 'carros' },
	{ hash = 544021352, name = 'khamelion', price = 210000, banido = false, modelo = 'Khamelion', capacidade = 50, tipo = 'carros' },
	{ hash = -1372848492, name = 'kuruma', price = 330000, banido = false, modelo = 'Kuruma', capacidade = 50, tipo = 'carros' },
	{ hash = -142942670, name = 'massacro', price = 330000, banido = false, modelo = 'Massacro', capacidade = 50, tipo = 'carros' },
	{ hash = -631760477, name = 'massacro2', price = 330000, banido = false, modelo = 'Massacro2', capacidade = 50, tipo = 'carros' },
	{ hash = 1032823388, name = 'ninef', price = 290000, banido = false, modelo = 'Ninef', capacidade = 50, tipo = 'carros' },
	{ hash = -1461482751, name = 'ninef2', price = 290000, banido = false, modelo = 'Ninef2', capacidade = 50, tipo = 'carros' },
	{ hash = -777172681, name = 'omnis', price = 240000, banido = false, modelo = 'Omnis', capacidade = 50, tipo = 'carros' },
	{ hash = 867799010, name = 'pariah', price = 500000, banido = false, modelo = 'Pariah', capacidade = 50, tipo = 'carros' },
	{ hash = -377465520, name = 'penumbra', price = 150000, banido = false, modelo = 'Penumbra', capacidade = 50, tipo = 'carros' },
	{ hash = -1529242755, name = 'raiden', price = 240000, banido = false, modelo = 'Raiden', capacidade = 50, tipo = 'carros' },
	{ hash = -1934452204, name = 'rapidgt', price = 250000, banido = false, modelo = 'Rapidgt', capacidade = 50, tipo = 'carros' },
	{ hash = 1737773231, name = 'rapidgt2', price = 300000, banido = false, modelo = 'Rapidgt2', capacidade = 50, tipo = 'carros' },
	{ hash = 719660200, name = 'ruston', price = 370000, banido = false, modelo = 'Ruston', capacidade = 50, tipo = 'carros' },
	{ hash = -1485523546, name = 'schafter3', price = 275000, banido = false, modelo = 'Schafter3', capacidade = 50, tipo = 'carros' },
	{ hash = 1489967196, name = 'schafter4', price = 275000, banido = false, modelo = 'Schafter4', capacidade = 50, tipo = 'carros' },
	{ hash = -888242983, name = 'schafter5', price = 275000, banido = false, modelo = 'Schafter5', capacidade = 50, tipo = 'carros' },
	{ hash = -746882698, name = 'schwarzer', price = 170000, banido = false, modelo = 'Schwarzer', capacidade = 50, tipo = 'carros' },
	{ hash = 1104234922, name = 'sentinel3', price = 170000, banido = false, modelo = 'Sentinel3', capacidade = 50, tipo = 'carros' },
	{ hash = -1757836725, name = 'seven70', price = 370000, banido = false, modelo = 'Seven70', capacidade = 50, tipo = 'carros' },
	{ hash = 1886268224, name = 'specter', price = 320000, banido = false, modelo = 'Specter', capacidade = 50, tipo = 'carros' },
	{ hash = 1074745671, name = 'specter2', price = 355000, banido = false, modelo = 'Specter2', capacidade = 50, tipo = 'carros' },
	{ hash = 1741861769, name = 'streiter', price = 250000, banido = false, modelo = 'Streiter', capacidade = 50, tipo = 'carros' },
	{ hash = 970598228, name = 'sultan', price = 210000, banido = false, modelo = 'Sultan', capacidade = 50, tipo = 'carros' },
	{ hash = 384071873, name = 'surano', price = 310000, banido = false, modelo = 'Surano', capacidade = 50, tipo = 'carros' },
	{ hash = -1071380347, name = 'tampa2', price = 200000, banido = false, modelo = 'Tampa2', capacidade = 50, tipo = 'carros' },
	{ hash = 1887331236, name = 'tropos', price = 170000, banido = false, modelo = 'Tropos', capacidade = 50, tipo = 'carros' },
	{ hash = 1102544804, name = 'verlierer2', price = 380000, banido = false, modelo = 'Verlierer2', capacidade = 50, tipo = 'carros' },
	{ hash = 117401876, name = 'btype', price = 200000, banido = false, modelo = 'Btype', capacidade = 10, tipo = 'work' },
	{ hash = -831834716, name = 'btype2', price = 460000, banido = false, modelo = 'Btype2', capacidade = 50, tipo = 'carros' },
	{ hash = -602287871, name = 'btype3', price = 390000, banido = false, modelo = 'Btype3', capacidade = 50, tipo = 'carros' },
	{ hash = 941800958, name = 'casco', price = 355000, banido = false, modelo = 'Casco', capacidade = 50, tipo = 'carros' },
	{ hash = -1311154784, name = 'cheetah', price = 425000, banido = false, modelo = 'Cheetah', capacidade = 50, tipo = 'carros' },
	{ hash = 1011753235, name = 'coquette2', price = 285000, banido = false, modelo = 'Coquette2', capacidade = 50, tipo = 'carros' },
	{ hash = -1566741232, name = 'feltzer3', price = 220000, banido = false, modelo = 'Feltzer3', capacidade = 50, tipo = 'carros' },
	{ hash = -2079788230, name = 'gt500', price = 250000, banido = false, modelo = 'Gt500', capacidade = 50, tipo = 'carros' },
	{ hash = -1405937764, name = 'infernus2', price = 250000, banido = false, modelo = 'Infernus2', capacidade = 50, tipo = 'carros' },
	{ hash = 1051415893, name = 'jb700', price = 220000, banido = false, modelo = 'Jb700', capacidade = 50, tipo = 'carros' },
	{ hash = -1660945322, name = 'mamba', price = 300000, banido = false, modelo = 'Mamba', capacidade = 50, tipo = 'carros' },
	{ hash = -2124201592, name = 'manana', price = 130000, banido = false, modelo = 'Manana', capacidade = 50, tipo = 'carros' },
	{ hash = -433375717, name = 'monroe', price = 260000, banido = false, modelo = 'Monroe', capacidade = 50, tipo = 'carros' },
	{ hash = 1830407356, name = 'peyote', price = 150000, banido = false, modelo = 'Peyote', capacidade = 50, tipo = 'carros' },
	{ hash = 1078682497, name = 'pigalle', price = 250000, banido = false, modelo = 'Pigalle', capacidade = 50, tipo = 'carros' },
	{ hash = 2049897956, name = 'rapidgt3', price = 220000, banido = false, modelo = 'Rapidgt3', capacidade = 50, tipo = 'carros' },
	{ hash = 1841130506, name = 'retinue', price = 150000, banido = false, modelo = 'Retinue', capacidade = 50, tipo = 'carros' },
	{ hash = 1545842587, name = 'stinger', price = 220000, banido = false, modelo = 'Stinger', capacidade = 50, tipo = 'carros' },
	{ hash = -2098947590, name = 'stingergt', price = 230000, banido = false, modelo = 'Stingergt', capacidade = 50, tipo = 'carros' },
	{ hash = 1504306544, name = 'torero', price = 160000, banido = false, modelo = 'Torero', capacidade = 50, tipo = 'carros' },
	{ hash = 464687292, name = 'tornado', price = 150000, banido = false, modelo = 'Tornado', capacidade = 50, tipo = 'carros' },
	{ hash = 1531094468, name = 'tornado2', price = 160000, banido = false, modelo = 'Tornado2', capacidade = 50, tipo = 'carros' },
	{ hash = -1797613329, name = 'tornado5', price = 200000, banido = false, modelo = 'Tornado5', capacidade = 10, tipo = 'work' },
	{ hash = -1558399629, name = 'tornado6', price = 250000, banido = false, modelo = 'Tornado6', capacidade = 50, tipo = 'carros' },
	{ hash = -982130927, name = 'turismo2', price = 250000, banido = false, modelo = 'Turismo2', capacidade = 50, tipo = 'carros' },
	{ hash = 758895617, name = 'ztype', price = 400000, banido = false, modelo = 'Ztype', capacidade = 50, tipo = 'carros' },
	{ hash = -1216765807, name = 'adder', price = 620000, banido = false, modelo = 'Adder', capacidade = 50, tipo = 'carros' },
	{ hash = -313185164, name = 'autarch', price = 760000, banido = false, modelo = 'Autarch', capacidade = 50, tipo = 'carros' },
	{ hash = 633712403, name = 'banshee2', price = 370000, banido = false, modelo = 'Banshee2', capacidade = 50, tipo = 'carros' },
	{ hash = -1696146015, name = 'bullet', price = 400000, banido = false, modelo = 'Bullet', capacidade = 50, tipo = 'carros' },
	{ hash = 223240013, name = 'cheetah2', price = 240000, banido = false, modelo = 'Cheetah2', capacidade = 50, tipo = 'carros' },
	{ hash = -1291952903, name = 'entityxf', price = 460000, banido = false, modelo = 'Entityxf', capacidade = 50, tipo = 'carros' },
	{ hash = 1426219628, name = 'fmj', price = 520000, banido = false, modelo = 'Fmj', capacidade = 50, tipo = 'carros' },
	{ hash = 1234311532, name = 'gp1', price = 495000, banido = false, modelo = 'Gp1', capacidade = 50, tipo = 'carros' },
	{ hash = 418536135, name = 'infernus', price = 470000, banido = false, modelo = 'Infernus', capacidade = 50, tipo = 'carros' },
	{ hash = 1034187331, name = 'nero', price = 450000, banido = false, modelo = 'Nero', capacidade = 50, tipo = 'carros' },
	{ hash = 1093792632, name = 'nero2', price = 480000, banido = false, modelo = 'Nero2', capacidade = 50, tipo = 'carros' },
	{ hash = 1987142870, name = 'osiris', price = 460000, banido = false, modelo = 'Osiris', capacidade = 50, tipo = 'carros' },
	{ hash = -1758137366, name = 'penetrator', price = 480000, banido = false, modelo = 'Penetrator', capacidade = 50, tipo = 'carros' },
	{ hash = -1829802492, name = 'pfister811', price = 530000, banido = false, modelo = 'Pfister811', capacidade = 50, tipo = 'carros' },
	{ hash = 234062309, name = 'reaper', price = 620000, banido = false, modelo = 'Reaper', capacidade = 50, tipo = 'carros' },
	{ hash = 1352136073, name = 'sc1', price = 495000, banido = false, modelo = 'Sc1', capacidade = 50, tipo = 'carros' },
	{ hash = -295689028, name = 'sultanrs', price = 450000, banido = false, modelo = 'Sultan RS', capacidade = 50, tipo = 'carros' },
	{ hash = 1663218586, name = 't20', price = 670000, banido = false, modelo = 'T20', capacidade = 50, tipo = 'carros' },
	{ hash = 272929391, name = 'tempesta', price = 600000, banido = false, modelo = 'Tempesta', capacidade = 50, tipo = 'carros' },
	{ hash = 408192225, name = 'turismor', price = 620000, banido = false, modelo = 'Turismor', capacidade = 50, tipo = 'carros' },
	{ hash = 2067820283, name = 'tyrus', price = 620000, banido = false, modelo = 'Tyrus', capacidade = 50, tipo = 'carros' },
	{ hash = 338562499, name = 'vacca', price = 620000, banido = false, modelo = 'Vacca', capacidade = 50, tipo = 'carros' },
	{ hash = -998177792, name = 'visione', price = 690000, banido = false, modelo = 'Visione', capacidade = 50, tipo = 'carros' },
	{ hash = -1622444098, name = 'voltic', price = 440000, banido = false, modelo = 'Voltic', capacidade = 50, tipo = 'carros' },
	{ hash = -1403128555, name = 'zentorno', price = 220000, banido = false, modelo = 'Zentorno', capacidade = 50, tipo = 'carros' },
	{ hash = -599568815, name = 'sadler', price = 180000, banido = false, modelo = 'Sadler', capacidade = 50, tipo = 'carros' },
	{ hash = -16948145, name = 'bison', price = 220000, banido = false, modelo = 'Bison', capacidade = 50, tipo = 'carros' },
	{ hash = 2072156101, name = 'bison2', price = 180000, banido = false, modelo = 'Bison2', capacidade = 50, tipo = 'carros' },
	{ hash = 1069929536, name = 'bobcatxl', price = 260000, banido = false, modelo = 'Bobcatxl', capacidade = 50, tipo = 'carros' },
	{ hash = -1346687836, name = 'burrito', price = 260000, banido = false, modelo = 'Burrito', capacidade = 100, tipo = 'carros' },
	{ hash = -907477130, name = 'burrito2', price = 260000, banido = false, modelo = 'Burrito2', capacidade = 100, tipo = 'carros' },
	{ hash = -1743316013, name = 'burrito3', price = 260000, banido = false, modelo = 'Burrito3', capacidade = 100, tipo = 'carros' },
	{ hash = 893081117, name = 'burrito4', price = 260000, banido = false, modelo = 'Burrito4', capacidade = 100, tipo = 'carros' },
	{ hash = -310465116, name = 'minivan', price = 110000, banido = false, modelo = 'Minivan', capacidade = 50, tipo = 'carros' },
	{ hash = -1126264336, name = 'minivan2', price = 220000, banido = false, modelo = 'Minivan2', capacidade = 50, tipo = 'carros' },
	{ hash = 1488164764, name = 'paradise', price = 260000, banido = false, modelo = 'Paradise', capacidade = 50, tipo = 'carros' },
	{ hash = -119658072, name = 'pony', price = 260000, banido = false, modelo = 'Pony', capacidade = 50, tipo = 'carros' },
	{ hash = 943752001, name = 'pony2', price = 260000, banido = false, modelo = 'Pony2', capacidade = 50, tipo = 'carros' },
	{ hash = 1162065741, name = 'rumpo', price = 260000, banido = false, modelo = 'Rumpo', capacidade = 50, tipo = 'carros' },
	{ hash = -1776615689, name = 'rumpo2', price = 260000, banido = false, modelo = 'Rumpo2', capacidade = 50, tipo = 'carros' },
	{ hash = 1475773103, name = 'rumpo3', price = 350000, banido = false, modelo = 'Rumpo3', capacidade = 50, tipo = 'carros' },
	{ hash = -810318068, name = 'speedo', price = 200000, banido = false, modelo = 'Speedo', capacidade = 10, tipo = 'work' },
	{ hash = 699456151, name = 'surfer', price = 55000, banido = false, modelo = 'Surfer', capacidade = 50, tipo = 'carros' },
	{ hash = 65402552, name = 'youga', price = 260000, banido = false, modelo = 'Youga', capacidade = 50, tipo = 'carros' },
	{ hash = 1026149675, name = 'youga2', price = 100000, banido = false, modelo = 'Youga XL', capacidade = 10, tipo = 'work' },
	{ hash = -1207771834, name = 'rebel', price = 1000, banido = false, modelo = 'Rebel', capacidade = 10, tipo = 'work' },
	{ hash = -2076478498, name = 'tractor2', price = 1000, banido = false, modelo = 'Tractor2', capacidade = 10, tipo = 'work' },
	{ hash = 486987393, name = 'huntley', price = 110000, banido = false, modelo = 'Huntley', capacidade = 50, tipo = 'carros' },
	{ hash = 1269098716, name = 'landstalker', price = 130000, banido = false, modelo = 'Landstalker', capacidade = 50, tipo = 'carros' },
	{ hash = 914654722, name = 'mesa', price = 90000, banido = false, modelo = 'Mesa', capacidade = 50, tipo = 'carros' },
	{ hash = -808457413, name = 'patriot', price = 250000, banido = false, modelo = 'Patriot', capacidade = 50, tipo = 'carros' },
	{ hash = -1651067813, name = 'radi', price = 110000, banido = false, modelo = 'Radi', capacidade = 50, tipo = 'carros' },
	{ hash = 2136773105, name = 'rocoto', price = 110000, banido = false, modelo = 'Rocoto', capacidade = 50, tipo = 'carros' },
	{ hash = -376434238, name = 'tyrant', price = 690000, banido = false, modelo = 'Tyrant', capacidade = 50, tipo = 'carros' },
	{ hash = -2120700196, name = 'entity2', price = 550000, banido = false, modelo = 'Entity2', capacidade = 50, tipo = 'carros' },
	{ hash = -988501280, name = 'cheburek', price = 170000, banido = false, modelo = 'Cheburek', capacidade = 50, tipo = 'carros' },
	{ hash = 1115909093, name = 'hotring', price = 300000, banido = false, modelo = 'Hotring', capacidade = 50, tipo = 'carros' },
	{ hash = -214906006, name = 'jester3', price = 345000, banido = false, modelo = 'Jester3', capacidade = 50, tipo = 'carros' },
	{ hash = -1259134696, name = 'flashgt', price = 370000, banido = false, modelo = 'Flashgt', capacidade = 50, tipo = 'carros' },
	{ hash = -1267543371, name = 'ellie', price = 320000, banido = false, modelo = 'Ellie', capacidade = 50, tipo = 'carros' },
	{ hash = 1046206681, name = 'michelli', price = 160000, banido = false, modelo = 'Michelli', capacidade = 50, tipo = 'carros' },
	{ hash = 1617472902, name = 'fagaloa', price = 320000, banido = false, modelo = 'Fagaloa', capacidade = 50, tipo = 'carros' },
	{ hash = -915704871, name = 'dominator2', price = 230000, banido = false, modelo = 'Dominator2', capacidade = 50, tipo = 'carros' },
	{ hash = -986944621, name = 'dominator3', price = 370000, banido = false, modelo = 'Dominator3', capacidade = 50, tipo = 'carros' },
	{ hash = 931280609, name = 'issi3', price = 190000, banido = false, modelo = 'Issi3', capacidade = 50, tipo = 'carros' },
	{ hash = -1134706562, name = 'taipan', price = 620000, banido = false, modelo = 'Taipan', capacidade = 50, tipo = 'carros' },
	{ hash = 1909189272, name = 'gb200', price = 195000, banido = false, modelo = 'Gb200', capacidade = 50, tipo = 'carros' },
	{ hash = -1961627517, name = 'stretch', price = 520000, banido = false, modelo = 'Stretch', capacidade = 50, tipo = 'carros' },
	{ hash = -2107990196, name = 'guardian', price = 540000, banido = false, modelo = 'Guardian', capacidade = 50, tipo = 'carros' },
	{ hash = -121446169, name = 'kamacho', price = 460000, banido = false, modelo = 'Kamacho', capacidade = 50, tipo = 'carros' },
	{ hash = -1848994066, name = 'sentinel3', price = 370000, banido = false, modelo = 'Neon', capacidade = 50, tipo = 'carros' },
	{ hash = 1392481335, name = 'cyclone', price = 220000, banido = false, modelo = 'Cyclone', capacidade = 50, tipo = 'carros' },
	{ hash = -2048333973, name = 'italigtb', price = 600000, banido = false, modelo = 'Italigtb', capacidade = 50, tipo = 'carros' },
	{ hash = -482719877, name = 'italigtb2', price = 610000, banido = false, modelo = 'Italigtb2', capacidade = 50, tipo = 'carros' },
	{ hash = 1939284556, name = 'vagner', price = 680000, banido = false, modelo = 'Vagner', capacidade = 50, tipo = 'carros' },
	{ hash = 917809321, name = 'xa21', price = 630000, banido = false, modelo = 'Xa21', capacidade = 50, tipo = 'carros' },
	{ hash = 1031562256, name = 'tezeract', price = 220000, banido = false, modelo = 'Tezeract', capacidade = 50, tipo = 'carros' },
	{ hash = 2123327359, name = 'prototipo', price = 1030000, banido = false, modelo = 'Prototipo', capacidade = 50, tipo = 'carros' },
	{ hash = -420911112, name = 'patriot2', price = 550000, banido = false, modelo = 'Patriot2', capacidade = 50, tipo = 'carros' },
	{ hash = 321186144, name = 'stafford', price = 200000, banido = false, modelo = 'Stafford', capacidade = 10, tipo = 'work' },
	{ hash = 500482303, name = 'swinger', price = 250000, banido = false, modelo = 'Swinger', capacidade = 50, tipo = 'carros' },
	{ hash = -1566607184, name = 'clique', price = 360000, banido = false, modelo = 'Clique', capacidade = 50, tipo = 'carros' },
	{ hash = 1591739866, name = 'deveste', price = 220000, banido = false, modelo = 'Deveste', capacidade = 50, tipo = 'carros' },
	{ hash = 1279262537, name = 'deviant', price = 370000, banido = false, modelo = 'Deviant', capacidade = 50, tipo = 'carros' },
	{ hash = -2096690334, name = 'impaler', price = 320000, banido = false, modelo = 'Impaler', capacidade = 50, tipo = 'carros' },
	{ hash = -331467772, name = 'italigto', price = 800000, banido = false, modelo = 'Italigto', capacidade = 50, tipo = 'carros' },
	{ hash = -507495760, name = 'schlagen', price = 690000, banido = false, modelo = 'Schlagen', capacidade = 50, tipo = 'carros' },
	{ hash = -1168952148, name = 'toros', price = 520000, banido = false, modelo = 'Toros', capacidade = 50, tipo = 'carros' },
	{ hash = 1456744817, name = 'tulip', price = 320000, banido = false, modelo = 'Tulip', capacidade = 50, tipo = 'carros' },
	{ hash = -49115651, name = 'vamos', price = 320000, banido = false, modelo = 'Vamos', capacidade = 50, tipo = 'carros' },
	{ hash = -54332285, name = 'freecrawler', price = 350000, banido = false, modelo = 'Freecrawler', capacidade = 50, tipo = 'carros' },
	{ hash = 1909141499, name = 'fugitive', price = 50000, banido = false, modelo = 'Fugitive', capacidade = 50, tipo = 'carros' },
	{ hash = -1232836011, name = 'le7b', price = 700000, banido = false, modelo = 'Le7b', capacidade = 50, tipo = 'carros' },
	{ hash = 2068293287, name = 'lurcher', price = 150000, banido = false, modelo = 'Lurcher', capacidade = 50, tipo = 'carros' },
	{ hash = 482197771, name = 'lynx', price = 370000, banido = false, modelo = 'Lynx', capacidade = 50, tipo = 'carros' },
	{ hash = -674927303, name = 'raptor', price = 300000, banido = false, modelo = 'Raptor', capacidade = 50, tipo = 'carros' },
	{ hash = 819197656, name = 'sheava', price = 700000, banido = false, modelo = 'Sheava', capacidade = 50, tipo = 'carros' },
	{ hash = 838982985, name = 'z190', price = 350000, banido = false, modelo = 'Z190', capacidade = 50, tipo = 'carros' },
	{ hash = 1672195559, name = 'akuma', price = 500000, banido = false, modelo = 'Akuma', capacidade = 10, tipo = 'motos' },
	{ hash = -2115793025, name = 'avarus', price = 440000, banido = false, modelo = 'Avarus', capacidade = 10, tipo = 'motos' },
	{ hash = -2140431165, name = 'bagger', price = 300000, banido = false, modelo = 'Bagger', capacidade = 10, tipo = 'motos' },
	{ hash = -114291515, name = 'bati', price = 370000, banido = false, modelo = 'Bati', capacidade = 10, tipo = 'motos' },
	{ hash = -891462355, name = 'bati2', price = 300000, banido = false, modelo = 'Bati2', capacidade = 10, tipo = 'motos' },
	{ hash = 86520421, name = 'bf400', price = 320000, banido = false, modelo = 'Bf400', capacidade = 10, tipo = 'motos' },
	{ hash = 11251904, name = 'carbonrs', price = 370000, banido = false, modelo = 'Carbonrs', capacidade = 10, tipo = 'motos' },
	{ hash = 6774487, name = 'chimera', price = 345000, banido = false, modelo = 'Chimera', capacidade = 10, tipo = 'motos' },
	{ hash = 390201602, name = 'cliffhanger', price = 310000, banido = false, modelo = 'Cliffhanger', capacidade = 10, tipo = 'motos' },
	{ hash = 2006142190, name = 'daemon', price = 200000, banido = false, modelo = 'Daemon', capacidade = 10, tipo = 'work' },
	{ hash = -1404136503, name = 'daemon2', price = 240000, banido = false, modelo = 'Daemon2', capacidade = 10, tipo = 'motos' },
	{ hash = 822018448, name = 'defiler', price = 460000, banido = false, modelo = 'Defiler', capacidade = 10, tipo = 'motos' },
	{ hash = -239841468, name = 'diablous', price = 430000, banido = false, modelo = 'Diablous', capacidade = 10, tipo = 'motos' },
	{ hash = 1790834270, name = 'diablous2', price = 460000, banido = false, modelo = 'Diablous2', capacidade = 10, tipo = 'motos' },
	{ hash = -1670998136, name = 'double', price = 370000, banido = false, modelo = 'Double', capacidade = 10, tipo = 'motos' },
	{ hash = 1753414259, name = 'enduro', price = 28000, banido = false, modelo = 'Enduro', capacidade = 10, tipo = 'motos' },
	{ hash = 2035069708, name = 'esskey', price = 320000, banido = false, modelo = 'Esskey', capacidade = 10, tipo = 'motos' },
	{ hash = -1842748181, name = 'faggio', price = 5000, banido = false, modelo = 'Faggio', capacidade = 10, tipo = 'motos' },
	{ hash = 55628203, name = 'faggio2', price = 5000, banido = false, modelo = 'Faggio2', capacidade = 10, tipo = 'motos' },
	{ hash = -1289178744, name = 'faggio3', price = 5000, banido = false, modelo = 'Faggio3', capacidade = 10, tipo = 'motos' },
	{ hash = 627535535, name = 'fcr', price = 390000, banido = false, modelo = 'Fcr', capacidade = 10, tipo = 'motos' },
	{ hash = -757735410, name = 'fcr2', price = 390000, banido = false, modelo = 'Fcr2', capacidade = 10, tipo = 'motos' },
	{ hash = 741090084, name = 'gargoyle', price = 345000, banido = false, modelo = 'Gargoyle', capacidade = 10, tipo = 'motos' },
	{ hash = 1265391242, name = 'hakuchou', price = 380000, banido = false, modelo = 'Hakuchou', capacidade = 10, tipo = 'motos' },
	{ hash = -255678177, name = 'hakuchou2', price = 550000, banido = false, modelo = 'Hakuchou2', capacidade = 10, tipo = 'motos' },
	{ hash = 301427732, name = 'hexer', price = 250000, banido = false, modelo = 'Hexer', capacidade = 10, tipo = 'motos' },
	{ hash = -159126838, name = 'innovation', price = 250000, banido = false, modelo = 'Innovation', capacidade = 10, tipo = 'motos' },
	{ hash = 640818791, name = 'lectro', price = 380000, banido = false, modelo = 'Lectro', capacidade = 10, tipo = 'motos' },
	{ hash = -1523428744, name = 'manchez', price = 355000, banido = false, modelo = 'Manchez', capacidade = 10, tipo = 'motos' },
	{ hash = -634879114, name = 'nemesis', price = 345000, banido = false, modelo = 'Nemesis', capacidade = 10, tipo = 'motos' },
	{ hash = -1606187161, name = 'nightblade', price = 415000, banido = false, modelo = 'Nightblade', capacidade = 10, tipo = 'motos' },
	{ hash = -909201658, name = 'pcj', price = 32000, banido = false, modelo = 'Pcj', capacidade = 10, tipo = 'motos' },
	{ hash = -893578776, name = 'ruffian', price = 345000, banido = false, modelo = 'Ruffian', capacidade = 10, tipo = 'motos' },
	{ hash = 788045382, name = 'sanchez', price = 185000, banido = false, modelo = 'Sanchez', capacidade = 10, tipo = 'motos' },
	{ hash = -1453280962, name = 'sanchez2', price = 185000, banido = false, modelo = 'Sanchez2', capacidade = 10, tipo = 'motos' },
	{ hash = 1491277511, name = 'sanctus', price = 200000, banido = false, modelo = 'Sanctus', capacidade = 10, tipo = 'work' },
	{ hash = 743478836, name = 'sovereign', price = 285000, banido = false, modelo = 'Sovereign', capacidade = 10, tipo = 'motos' },
	{ hash = 1836027715, name = 'thrust', price = 375000, banido = false, modelo = 'Thrust', capacidade = 10, tipo = 'motos' },
	{ hash = -140902153, name = 'vader', price = 345000, banido = false, modelo = 'Vader', capacidade = 10, tipo = 'motos' },
	{ hash = -1353081087, name = 'vindicator', price = 340000, banido = false, modelo = 'Vindicator', capacidade = 10, tipo = 'motos' },
	{ hash = -609625092, name = 'vortex', price = 375000, banido = false, modelo = 'Vortex', capacidade = 10, tipo = 'motos' },
	{ hash = -618617997, name = 'wolfsbane', price = 290000, banido = false, modelo = 'Wolfsbane', capacidade = 10, tipo = 'motos' },
	{ hash = -1009268949, name = 'zombiea', price = 290000, banido = false, modelo = 'Zombiea', capacidade = 10, tipo = 'motos' },
	{ hash = -570033273, name = 'zombieb', price = 300000, banido = false, modelo = 'Zombieb', capacidade = 10, tipo = 'motos' },
	{ hash = -2128233223, name = 'blazer', price = 230000, banido = true, modelo = 'Blazer', capacidade = 10, tipo = 'motos' },
	{ hash = -440768424, name = 'blazer4', price = 370000, banido = true, modelo = 'Blazer4', capacidade = 10, tipo = 'motos' },
	{ hash = -405626514, name = 'shotaro', price = 100000, banido = false, modelo = 'Shotaro', capacidade = 10, tipo = 'motos' },
	{ hash = 1873600305, name = 'ratbike', price = 230000, banido = false, modelo = 'Ratbike', capacidade = 10, tipo = 'motos' },
	{ hash = 1743739647, name = 'policiacharger2018', price = 1000, banido = true, modelo = 'Dodge Charger 2018', capacidade = 10, tipo = 'work' },
	{ hash = 1884511084, name = 'policiasilverado', price = 1000, banido = true, modelo = 'Chevrolet Silverado', capacidade = 10, tipo = 'work' },
	{ hash = 1865641415, name = 'policiatahoe', price = 1000, banido = true, modelo = 'Chevrolet Tahoe', capacidade = 10, tipo = 'work' },
	{ hash = 112218935, name = 'policiataurus', price = 1000, banido = true, modelo = 'Ford Taurus', capacidade = 10, tipo = 'work' },
	{ hash = -1624991916, name = 'policiabmwr1200', price = 1000, banido = true, modelo = 'BMW R1200', capacidade = 10, tipo = 'work' },
	{ hash = -875050963, name = 'policiaheli', price = 1000, banido = true, modelo = 'Delta', capacidade = 10, tipo = 'work' },
	{ hash = -1748002214, name = 'policiabearcat', price = 1000, banido = true, modelo = 'Bravo', capacidade = 10, tipo = 'work' },
	{ hash = 1171614426, name = 'ambulance', price = 1000, banido = true, modelo = 'Ambulância', capacidade = 10, tipo = 'work' },
	{ hash = -2007026063, name = 'pbus', price = 1000, banido = true, modelo = 'Echo', capacidade = 10, tipo = 'work' },
	{ hash = 1945374990, name = 'mule4', price = 260000, banido = false, modelo = 'Mule', capacidade = 800, tipo = 'work' },
	{ hash = -2103821244, name = 'rallytruck', price = 260000, banido = false, modelo = 'Burrito4', capacidade = 50, tipo = 'carros' },
	{ hash = -2072933068, name = 'coach', price = 1000, banido = true, modelo = 'Coach', capacidade = 10, tipo = 'work' },
	{ hash = -713569950, name = 'bus', price = 1000, banido = true, modelo = 'Ônibus', capacidade = 10, tipo = 'work' },
	{ hash = 1353720154, name = 'flatbed', price = 1000, banido = true, modelo = 'Reboque', capacidade = 10, tipo = 'work' },
	{ hash = -1323100960, name = 'towtruck', price = 1000, banido = true, modelo = 'Towtruck', capacidade = 10, tipo = 'work' },
	{ hash = -442313018, name = 'towtruck2', price = 1000, banido = true, modelo = 'Towtruck2', capacidade = 10, tipo = 'work' },
	{ hash = -667151410, name = 'ratloader', price = 1000, banido = true, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = -589178377, name = 'ratloader2', price = 1000, banido = false, modelo = 'Ratloader2', capacidade = 10, tipo = 'work' },
	{ hash = -1705304628, name = 'rubble', price = 1000, banido = true, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = -956048545, name = 'taxi', price = 1000, banido = true, modelo = 'Taxi', capacidade = 10, tipo = 'work' },
	{ hash = -233098306, name = 'boxville2', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = 444171386, name = 'boxville4', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = -1255698084, name = 'trash2', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 10, tipo = 'work' },
	{ hash = 48339065, name = 'tiptruck', price = 1000, banido = false, modelo = 'Tiptruck', capacidade = 10, tipo = 'work' },
	{ hash = -186537451, name = 'scorcher', price = 1000, banido = true, modelo = 'Scorcher', capacidade = 10, tipo = 'work' },
	{ hash = 1127861609, name = 'tribike', price = 1000, banido = true, modelo = 'Tribike', capacidade = 10, tipo = 'work' },
	{ hash = -1233807380, name = 'tribike2', price = 1000, banido = true, modelo = 'Tribike2', capacidade = 10, tipo = 'work' },
	{ hash = -400295096, name = 'tribike3', price = 1000, banido = true, modelo = 'Tribike3', capacidade = 10, tipo = 'work' },
	{ hash = -836512833, name = 'fixter', price = 1000, banido = true, modelo = 'Fixter', capacidade = 10, tipo = 'work' },
	{ hash = 448402357, name = 'cruiser', price = 1000, banido = true, modelo = 'Cruiser', capacidade = 10, tipo = 'work' },
	{ hash = 1131912276, name = 'bmx', price = 1000, banido = true, modelo = 'Bmx', capacidade = 10, tipo = 'work' },
	{ hash = 1033245328, name = 'dinghy', price = 1000, banido = true, modelo = 'Dinghy', capacidade = 10, tipo = 'work' },
	{ hash = 861409633, name = 'jetmax', price = 1000, banido = true, modelo = 'Jetmax', capacidade = 10, tipo = 'work' },
	{ hash = -1043459709, name = 'marquis', price = 1000, banido = true, modelo = 'Marquis', capacidade = 10, tipo = 'work' },
	{ hash = -311022263, name = 'seashark3', price = 1000, banido = true, modelo = 'Seashark3', capacidade = 10, tipo = 'work' },
	{ hash = 231083307, name = 'speeder', price = 1000, banido = true, modelo = 'Speeder', capacidade = 10, tipo = 'work' },
	{ hash = 437538602, name = 'speeder2', price = 1000, banido = true, modelo = 'Speeder2', capacidade = 10, tipo = 'work' },
	{ hash = 400514754, name = 'squalo', price = 1000, banido = true, modelo = 'Squalo', capacidade = 10, tipo = 'work' },
	{ hash = -282946103, name = 'suntrap', price = 1000, banido = true, modelo = 'Suntrap', capacidade = 10, tipo = 'work' },
	{ hash = 1070967343, name = 'toro', price = 1000, banido = true, modelo = 'Toro', capacidade = 10, tipo = 'work' },
	{ hash = 908897389, name = 'toro2', price = 1000, banido = true, modelo = 'Toro2', capacidade = 10, tipo = 'work' },
	{ hash = 290013743, name = 'tropic', price = 1000, banido = true, modelo = 'Tropic', capacidade = 10, tipo = 'work' },
	{ hash = 1448677353, name = 'tropic2', price = 1000, banido = true, modelo = 'Tropic2', capacidade = 10, tipo = 'work' },
	{ hash = -2137348917, name = 'phantom', price = 1000, banido = true, modelo = 'Phantom', capacidade = 10, tipo = 'work' },
	{ hash = 569305213, name = 'packer', price = 1000, banido = true, modelo = 'Packer', capacidade = 10, tipo = 'work' },
	{ hash = 710198397, name = 'supervolito', price = 1000, banido = true, modelo = 'Supervolito', capacidade = 10, tipo = 'work' },
	{ hash = -1671539132, name = 'supervolito2', price = 1000, banido = true, modelo = 'Supervolito2', capacidade = 10, tipo = 'work' },
	{ hash = -644710429, name = 'cuban800', price = 1000, banido = true, modelo = 'Cuban800', capacidade = 10, tipo = 'work' },
	{ hash = -1746576111, name = 'mammatus', price = 1000, banido = true, modelo = 'Mammatus', capacidade = 10, tipo = 'work' },
	{ hash = 1341619767, name = 'vestra', price = 1000, banido = true, modelo = 'Vestra', capacidade = 10, tipo = 'work' },
	{ hash = 1077420264, name = 'velum2', price = 1000, banido = true, modelo = 'Velum2', capacidade = 10, tipo = 'work' },
	{ hash = 745926877, name = 'buzzard2', price = 1000, banido = true, modelo = 'Buzzard2', capacidade = 10, tipo = 'work' },
	{ hash = 744705981, name = 'frogger', price = 1000, banido = true, modelo = 'Frogger', capacidade = 10, tipo = 'work' },
	{ hash = -1660661558, name = 'maverick', price = 1000, banido = true, modelo = 'Maverick', capacidade = 10, tipo = 'work' },
	{ hash = 1956216962, name = 'tanker2', price = 1000, banido = true, modelo = 'Gas', capacidade = 10, tipo = 'work' },
	{ hash = -1207431159, name = 'armytanker', price = 1000, banido = true, modelo = 'Diesel', capacidade = 10, tipo = 'work' },
	{ hash = -1770643266, name = 'tvtrailer', price = 1000, banido = true, modelo = 'Show', capacidade = 10, tipo = 'work' },
	{ hash = 2016027501, name = 'trailerlogs', price = 1000, banido = true, modelo = 'Woods', capacidade = 10, tipo = 'work' },
	{ hash = 2091594960, name = 'tr4', price = 1000, banido = true, modelo = 'Cars', capacidade = 10, tipo = 'work' },
	{ hash = -60313827, name = 'nissangtr', price = 100000, banido = false, modelo = 'Nissan GTR', capacidade = 50, tipo = 'exclusive' },
	{ hash = -2015218779, name = 'nissan370z', price = 100000, banido = false, modelo = 'Nissan 370Z', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1601422646, name = 'dodgechargersrt', price = 220000, banido = false, modelo = 'Dodge Charger SRT', capacidade = 60, tipo = 'import' },
	{ hash = -1173768715, name = 'ferrariitalia', price = 100000, banido = false, modelo = 'Ferrari Italia', capacidade = 50, tipo = 'exclusive' },
	{ hash = -157095615, name = 'bmwm3f80', price = 1350000, banido = false, modelo = 'BMW M3 F80', capacidade = 60, tipo = 'import' },
	{ hash = -13524981, name = 'bmwm4gts', price = 100000, banido = false, modelo = 'BMW M4 GTS', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1573350092, name = 'fordmustang', price = 220000, banido = false, modelo = 'Ford Mustang', capacidade = 60, tipo = 'import' },
	{ hash = 1114244595, name = 'lamborghinihuracan', price = 220000, banido = false, modelo = 'Lamborghini Huracan', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1978088379, name = 'lancerevolutionx', price = 220000, banido = false, modelo = 'Lancer Evolution X', capacidade = 60, tipo = 'import' },
	{ hash = 2034235290, name = 'mazdarx7', price = 100000, banido = false, modelo = 'Mazda RX7', capacidade = 50, tipo = 'exclusive' },
	{ hash = 670022011, name = 'nissangtrnismo', price = 100000, banido = false, modelo = 'Nissan GTR Nismo', capacidade = 50, tipo = 'exclusive' },
	{ hash = -4816535, name = 'nissanskyliner34', price = 100000, banido = false, modelo = 'Nissan Skyline R34', capacidade = 50, tipo = 'exclusive' },
	{ hash = 351980252, name = 'teslaprior', price = 1750000, banido = false, modelo = 'Tesla Prior', capacidade = 60, tipo = 'import' },
	{ hash = 723779872, name = 'toyotasupra', price = 100000, banido = false, modelo = 'Toyota Supra', capacidade = 50, tipo = 'exclusive' },
	{ hash = -740742391, name = 'mercedesa45', price = 1200000, banido = false, modelo = 'Mercedes A45', capacidade = 60, tipo = 'import' },
	{ hash = 819937652, name = 'focusrs', price = 100000, banido = false, modelo = 'Focus RS', capacidade = 60, tipo = 'import' },
	{ hash = -133349447, name = 'lancerevolution9', price = 1400000, banido = false, modelo = 'Lancer Evolution 9', capacidade = 60, tipo = 'import' },
	{ hash = 1911052153, name = 'ninjah2', price = 100000, banido = false, modelo = 'Ninja H2', capacidade = 50, tipo = 'exclusive' },
	{ hash = -333868117, name = 'trr', price = 100000, banido = false, modelo = 'KTM TRR', capacidade = 50, tipo = 'exclusive' },
	{ hash = -189438188, name = 'p1', price = 100000, banido = false, modelo = 'Mclaren P1', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1718441594, name = 'i8', price = 100000, banido = false, modelo = 'BMW i8', capacidade = 50, tipo = 'exclusive' },
	{ hash = -380714779, name = 'bme6tun', price = 100000, banido = false, modelo = 'BMW M5', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1481236684, name = 'aperta', price = 100000, banido = false, modelo = 'La Ferrari', capacidade = 50, tipo = 'exclusive' },
	{ hash = -498891507, name = 'bettle', price = 100000, banido = false, modelo = 'New Bettle', capacidade = 50, tipo = 'exclusive' },
	{ hash = -433961724, name = 'senna', price = 100000, banido = false, modelo = 'Mclaren Senna', capacidade = 50, tipo = 'exclusive' },
	{ hash = 113372153, name = 'bnteam', price = 100000, banido = false, modelo = 'Bentley', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1274284606, name = 'rmodlp770', price = 100000, banido = false, modelo = 'Lamborghini Centenario', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1966489524, name = 's15', price = 100000, banido = false, modelo = 'Nissan Silvia S15', capacidade = 50, tipo = 'exclusive' },
	{ hash = -915188472, name = 'amggtr', price = 100000, banido = false, modelo = 'Mercedes AMG', capacidade = 50, tipo = 'exclusive' },
	{ hash = -264618235, name = 'lamtmc', price = 100000, banido = false, modelo = 'Lamborghini Terzo', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1067176722, name = 'vantage', price = 100000, banido = false, modelo = 'Aston Martin Vantage', capacidade = 50, tipo = 'exclusive' },
	{ hash = 493030188, name = 'amarok', price = 100000, banido = false, modelo = 'VW Amarok', capacidade = 50, tipo = 'exclusive' },
	{ hash = 2093958905, name = 'slsamg', price = 100000, banido = false, modelo = 'Mercedes SLS', capacidade = 50, tipo = 'exclusive' },
	{ hash = 104532066, name = 'g65amg', price = 100000, banido = false, modelo = 'Mercedes G65', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1995020435, name = 'celta', price = 100000, banido = false, modelo = 'Celta Paredão', capacidade = 50, tipo = 'exclusive' },
	{ hash = 137494285, name = 'eleanor', price = 100000, banido = false, modelo = 'Mustang Eleanor', capacidade = 50, tipo = 'exclusive' },
	{ hash = -863499820, name = 'rmodamgc63', price = 100000, banido = false, modelo = 'Mercedes AMG C63', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1315334327, name = 'palameila', price = 100000, banido = false, modelo = 'Porsche Panamera', capacidade = 50, tipo = 'exclusive' },
	{ hash = 2047166283, name = 'bmws', price = 100000, banido = false, modelo = 'BMW S1000', capacidade = 50, tipo = 'exclusive' },
	{ hash = 494265960, name = 'cb500x', price = 100000, banido = false, modelo = 'Honda CB500', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1031680535, name = 'rsvr16', price = 100000, banido = false, modelo = 'Ranger Rover', capacidade = 50, tipo = 'exclusive' },
	{ hash = -42051018, name = 'veneno', price = 100000, banido = false, modelo = 'Lamborghini Veneno', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1824291874, name = '19ramdonk', price = 100000, banido = false, modelo = 'Dodge Ram Donk', capacidade = 50, tipo = 'exclusive' },
	{ hash = -304124483, name = 'silv86', price = 100000, banido = false, modelo = 'Silverado Donk', capacidade = 50, tipo = 'exclusive' },
	{ hash = -402398867, name = 'bc', price = 100000, banido = false, modelo = 'Pagani Huayra', capacidade = 50, tipo = 'exclusive' },
	{ hash = 2113322010, name = '70camarofn', price = 100000, banido = false, modelo = 'camaro Z28 1970', capacidade = 50, tipo = 'exclusive' },
	{ hash = -654239719, name = 'agerars', price = 100000, banido = false, modelo = 'Koenigsegg Agera RS', capacidade = 50, tipo = 'exclusive' },
	{ hash = 580861919, name = 'fc15', price = 100000, banido = false, modelo = 'Ferrari California', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1402024844, name = 'bbentayga', price = 100000, banido = false, modelo = 'Bentley Bentayga', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1221510024, name = 'nissantitan17', price = 100000, banido = false, modelo = 'Nissan Titan 2017', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1085789913, name = 'regera', price = 100000, banido = false, modelo = 'Koenigsegg Regera', capacidade = 50, tipo = 'exclusive' },
	{ hash = 144259586, name = '911r', price = 100000, banido = false, modelo = 'Porsche 911R', capacidade = 50, tipo = 'exclusive' },
	{ hash = -653358508, name = 'msohs', price = 100000, banido = false, modelo = 'Mclaren 688 HS', capacidade = 50, tipo = 'exclusive' },
	{ hash = -2011325074, name = 'gt17', price = 100000, banido = false, modelo = 'Ford GT 17', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1224601968, name = '19ftype', price = 100000, banido = false, modelo = 'Jaguar F-Type', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1593808613, name = '488gtb', price = 100000, banido = false, modelo = 'Ferrari 488 GTB', capacidade = 50, tipo = 'exclusive' },
	{ hash = 235772231, name = 'fxxkevo', price = 100000, banido = false, modelo = 'Ferrari FXXK Evo', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1313740730, name = 'm2', price = 100000, banido = false, modelo = 'BMW M2', capacidade = 50, tipo = 'exclusive' },
	{ hash = 233681897, name = 'defiant', price = 100000, banido = false, modelo = 'AMC Javelin 72', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1507259850, name = 'f12tdf', price = 100000, banido = false, modelo = 'Ferrari F12 TDF', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1863430482, name = '71gtx', price = 100000, banido = false, modelo = 'Plymouth 71 GTX', capacidade = 50, tipo = 'exclusive' },
	{ hash = 859592619, name = 'porsche992', price = 100000, banido = false, modelo = 'Porsche 992', capacidade = 50, tipo = 'exclusive' },
	{ hash = -187294055, name = '18macan', price = 100000, banido = false, modelo = 'Porsche Macan', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1270688730, name = 'm6e63', price = 100000, banido = false, modelo = 'BMW M6 E63', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1467569396, name = '180sx', price = 100000, banido = false, modelo = 'Nissan 180SX', capacidade = 50, tipo = 'exclusive' },
	{ hash = 653510754, name = 'hondafk8', price = 220000, banido = false, modelo = 'Honda FK8', capacidade = 60, tipo = 'import' },
	{ hash = -148915999, name = 'mustangmach1', price = 1100000, banido = false, modelo = 'Mustang Mach 1', capacidade = 60, tipo = 'import' },
	{ hash = 2009693397, name = 'porsche930', price = 1300000, banido = false, modelo = 'Porsche 930', capacidade = 60, tipo = 'import' },
	{ hash = 624514487, name = 'raptor2017', price = 100000, banido = false, modelo = 'Ford Raptor 2017', capacidade = 50, tipo = 'exclusive' },
	{ hash = -2096912321, name = 'filthynsx', price = 100000, banido = false, modelo = 'Honda NSX', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1671973728, name = '2018zl1', price = 100000, banido = false, modelo = 'Camaro ZL1', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1603211447, name = 'eclipse', price = 100000, banido = false, modelo = 'Mitsubishi Eclipse', capacidade = 50, tipo = 'exclusive' },
	{ hash = 949614817, name = 'lp700r', price = 100000, banido = false, modelo = 'Lamborghini LP700R', capacidade = 50, tipo = 'exclusive' },
	{ hash = 765170133, name = 'db11', price = 100000, banido = false, modelo = 'Aston Martin DB11', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1069692054, name = 'beetle74', price = 500000, banido = false, modelo = 'Fusca 74', capacidade = 60, tipo = 'import' },
	{ hash = 1649254367, name = 'fe86', price = 500000, banido = false, modelo = 'Escorte', capacidade = 60, tipo = 'import' },
	{ hash = -251450019, name = 'type263', price = 500000, banido = false, modelo = 'Kombi 63', capacidade = 60, tipo = 'import' },
	{ hash = 1128102088, name = 'pistas', price = 100000, banido = false, modelo = 'Ferrari Pista', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1152345593, name = 'yzfr125', price = 100000, banido = false, modelo = 'Yamaha YZF R125', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1301770299, name = 'mt03', price = 100000, banido = false, modelo = 'Yamaha MT 03', capacidade = 50, tipo = 'exclusive' },
	{ hash = 2037834373, name = 'flatbed3', price = 1000, banido = false, modelo = 'flatbed3', capacidade = 10, tipo = 'work' },
	{ hash = 194235445, name = '20r1', price = 100000, banido = false, modelo = 'Yamaha YZF R1', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1820486602, name = 'SVR14', price = 100000, banido = false, modelo = 'Ranger Rover', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1663453404, name = 'evoque', price = 100000, banido = false, modelo = 'Ranger Rover Evoque', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1343964931, name = 'Bimota', price = 100000, banido = false, modelo = 'Ducati Bimota', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1385753106, name = 'r8ppi', price = 100000, banido = false, modelo = 'Audi R8 PPI Razor', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1221749859, name = 'bobbes2', price = 100000, banido = false, modelo = 'Harley D. Bobber S', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1830458836, name = 'bobber', price = 100000, banido = false, modelo = 'Harley D. Bobber ', capacidade = 50, tipo = 'exclusive' },
	{ hash = -716699448, name = '911tbs', price = 100000, banido = false, modelo = 'Porsche 911S', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1845487887, name = 'volatus', price = 100000, banido = false, modelo = 'Volatus', capacidade = 10, tipo = 'work' },
	{ hash = -2049243343, name = 'rc', price = 100000, banido = false, modelo = 'KTM RC', capacidade = 50, tipo = 'exclusive' },
	{ hash = 16211617168, name = 'cargobob2', price = 100000, banido = false, modelo = 'Cargo Bob', capacidade = 10, tipo = 'work' },
	{ hash = -714386060, name = 'zx10r', price = 100000, banido = false, modelo = 'Kawasaki ZX10R', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1257756827, name = 'fox600lt', price = 100000, banido = false, modelo = 'McLaren 600LT', capacidade = 50, tipo = 'exclusive' },
	{ hash = -791711053, name = 'foxbent1', price = 100000, banido = false, modelo = 'Bentley Liter 1931', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1421258057, name = 'foxevo', price = 100000, banido = false, modelo = 'Lamborghini EVO', capacidade = 50, tipo = 'exclusive' },
	{ hash = -245054982, name = 'jeepg', price = 100000, banido = false, modelo = 'Jeep Gladiator', capacidade = 50, tipo = 'exclusive' },
	{ hash = 545993358, name = 'foxharley1', price = 100000, banido = false, modelo = 'Harley-Davidson Softail F.B.', capacidade = 50, tipo = 'exclusive' },
	{ hash = 305501667, name = 'foxharley2', price = 100000, banido = false, modelo = '2016 Harley-Davidson Road Glide', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1720228960, name = 'foxleggera', price = 100000, banido = false, modelo = 'Aston Martin Leggera', capacidade = 50, tipo = 'exclusive' },
	{ hash = -470882965, name = 'foxrossa', price = 100000, banido = false, modelo = 'Ferrari Rossa', capacidade = 50, tipo = 'exclusive' },
	{ hash = 182795887, name = 'foxsian', price = 100000, banido = false, modelo = 'Lamborghini Sian', capacidade = 50, tipo = 'exclusive' },
	{ hash = 1065452892, name = 'foxsterrato', price = 100000, banido = false, modelo = 'Lamborghini Sterrato', capacidade = 50, tipo = 'exclusive' },
	{ hash = 16473409, name = 'foxsupra', price = 100000, banido = false, modelo = 'Toyota Supra', capacidade = 50, tipo = 'exclusive' },
	{ hash = 53299675, name = 'm6x6', price = 100000, banido = false, modelo = 'Mercedes Benz 6x6', capacidade = 50, tipo = 'exclusive' },
	{ hash = -1677172839, name = 'm6gt3', price = 100000, banido = false, modelo = 'BMW M6 GT3', capacidade = 50, tipo = 'exclusive' },
	{ hash = 730959932, name = 'w900', price = 100000, banido = false, modelo = 'Kenworth W900', capacidade = 50, tipo = 'exclusive' },
	{ hash = 2112052861, name = 'pounder', price = 100000, banido = false, modelo = 'Pounder', capacidade = 1500, tipo = 'work' },
	{ hash = 1912215274, name = 'police3', price = 100000, banido = true, modelo = 'police 3', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("urus"), name = 'urus', price = 152000, banido = false, modelo = 'Urus', capacidade = 200, tipo = 'exclusive' },
	{ hash = GetHashKey("divo"), name = 'Divo', price = 152000, banido = false, modelo = 'Divo', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("bmwm8"), name = 'bmwm8', price = 152000, banido = false, modelo = 'Bmw M8', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("pm19"), name = 'pm19', price = 152000, banido = false, modelo = 'Porshe Macan', capacidade = 450, tipo = 'exclusive' },
	{ hash = GetHashKey("bmwm3f60"), name = 'bmwm3f60', price = 152000, banido = false, modelo = 'Bmw M3f60', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("audirs6"), name = 'audirs6', price = 152000, banido = false, modelo = 'Audi RS6', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("panamera17turbo"), name = 'panamera17turbo', price = 152000, banido = false, modelo = 'Panamera 17Turbo', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rs6"), name = 'rs6', price = 152000, banido = false, modelo = 'Audi RS6', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("c63hr"), name = 'c63hr', price = 152000, banido = false, modelo = 'C63 Hr', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("evoz"), name = 'evoz', price = 152000, banido = false, modelo = 'Evoz', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("fk8hr"), name = 'fk8hr', price = 152000, banido = false, modelo = 'Fk8hr', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("m6prior"), name = 'm6prior', price = 152000, banido = false, modelo = 'M6Prior', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("s63c217"), name = 's63c217', price = 152000, banido = false, modelo = 'S63c217', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rmodmk7"), name = 'rmodmk7', price = 152000, banido = false, modelo = 'Golf MK7', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("evo9"), name = 'evo9', price = 152000, banido = false, modelo = 'Lancer', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("xj6"), name = 'xj6', price = 152000, banido = false, modelo = 'XJ6', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("19raptor"), name = '19raptor', price = 152000, banido = false, modelo = 'Ford Raptor', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("r1"), name = 'r1', price = 152000, banido = false, modelo = 'Yamaha YZF-R1', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("amarokcivil"), name = 'amarokcivil', price = 152000, banido = false, modelo = 'Amarok Civil', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("amarokpmerj"), name = 'amarokpmerj', price = 152000, banido = false, modelo = 'Amarok Pmerj', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("amarokbope"), name = 'amarokbope', price = 152000, banido = false, modelo = 'Amarok Bope', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("600lt"), name = '600lt', price = 152000, banido = false, modelo = 'Mclaren 600LT', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("carcontss18"), name = 'carcontss18', price = 152000, banido = false, modelo = 'Carcontss18', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("f4rr"), name = 'f4rr', price = 152000, banido = false, modelo = 'F4rr', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("fnfrx7"), name = 'fnfrx7', price = 152000, banido = false, modelo = 'Mazda RX-7', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("fox"), name = 'fox', price = 152000, banido = false, modelo = 'Fox', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("foxshelby"), name = 'foxshelby', price = 152000, banido = false, modelo = 'Fox Shelby', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("ftoro"), name = 'ftoro', price = 152000, banido = false, modelo = 'Fiat Toro', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("cbr17"), name = 'cbr17', price = 152000, banido = false, modelo = 'CBR 2017', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("hondafk8"), name = 'hondafk8', price = 152000, banido = false, modelo = 'Honda Fk8', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("huayrar"), name = 'huayrar', price = 152000, banido = false, modelo = 'Huayrar', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("l200"), name = 'l200', price = 152000, banido = false, modelo = 'L200', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("m3f60"), name = 'm3f60', price = 152000, banido = false, modelo = 'M3 F60', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("m5f90"), name = 'm5f90', price = 152000, banido = false, modelo = 'M5 F90', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rmod240sx"), name = 'rmod240sx', price = 152000, banido = false, modelo = '240 Sx', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rmodessenza"), name = 'rmodessenza', price = 152000, banido = false, modelo = 'Lamborghini Senza', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("audir8"), name = 'audir8', price = 152000, banido = false, modelo = 'Audir R8', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("bmwi8"), name = 'bmwi8', price = 152000, banido = false, modelo = 'Audir R8', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bmwm5f90"), name = 'bmwm5f90', price = 152000, banido = false, modelo = 'BMW M5', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bmws100"), name = 'bmws100', price = 152000, banido = false, modelo = 'BMW S100', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("celta"), name = 'celta', price = 152000, banido = false, modelo = 'Celta', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("corvettec7"), name = 'corvettec7', price = 152000, banido = false, modelo = 'Corvette', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("dodgechallenger"), name = 'dodgechallenger', price = 152000, banido = false, modelo = 'Dodge Challenger', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ferrari812"), name = 'ferrari812', price = 152000, banido = false, modelo = 'Ferrari 812', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("fordfocus"), name = 'fordfocus', price = 152000, banido = false, modelo = 'Ford Focus', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("golfmk6"), name = 'golfmk6', price = 152000, banido = false, modelo = 'Golf MK6', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("jeepcherokee"), name = 'jeepcherokee', price = 152000, banido = false, modelo = 'Jeep Cherokee', capacidade = 600, tipo = 'exclusive' },	
	{ hash = GetHashKey("mazdarx7"), name = 'mazdarx7', price = 152000, banido = false, modelo = 'Mazda Rx7', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("maseratif620"), name = 'maseratif620', price = 152000, banido = false, modelo = 'Maserati', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("mercedesgt63s"), name = 'mercedesgt63s', price = 152000, banido = false, modelo = 'Mercedes Gt63s', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ninjazx10"), name = 'ninjazx10', price = 152000, banido = false, modelo = 'Ninja ZX10', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("subarubrz13"), name = 'subarubrz13', price = 152000, banido = false, modelo = 'Subaru BRZ', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodx6"), name = 'rmodx6', price = 152000, banido = false, modelo = 'BMW X6', capacidade = 200, tipo = 'exclusive' },	
	{ hash = GetHashKey("718b"), name = '718b', price = 152000, banido = false, modelo = 'Porshe 718B', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("africat"), name = 'africat', price = 152000, banido = false, modelo = 'Africat', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("audirs7"), name = 'audirs7', price = 152000, banido = false, modelo = 'Audi RS7', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("dm1200"), name = 'dm1200', price = 152000, banido = false, modelo = 'Dm 1200', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("fox720m"), name = 'fox720m', price = 152000, banido = false, modelo = 'Fox 720M', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxc8"), name = 'Fox C8', price = 152000, banido = false, modelo = 'Fox C8', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxct"), name = 'foxct', price = 152000, banido = false, modelo = 'Fox CT', capacidade = 300, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxevo"), name = 'foxevo', price = 152000, banido = false, modelo = 'Fox Evo', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxgt2"), name = 'foxgt2', price = 152000, banido = false, modelo = 'Fox GT2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxsenna"), name = 'foxsenna', price = 152000, banido = false, modelo = 'Fox Senna', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("golf7gti"), name = 'golf7gti', price = 152000, banido = false, modelo = 'Golf GTI', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("gsxr"), name = 'gsxr', price = 152000, banido = false, modelo = 'Suzuki GSX', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hayabusa"), name = 'hayabusa', price = 152000, banido = false, modelo = 'Hayabusa', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("paredao"), name = 'paredao', price = 152000, banido = false, modelo = 'Paredão', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("r6"), name = 'r6', price = 152000, banido = false, modelo = 'Yamaha R6', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodbacalar"), name = 'rmodbacalar', price = 152000, banido = false, modelo = 'Bacalar', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodf40"), name = 'rmodf40', price = 152000, banido = false, modelo = 'Ferrari F40', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("caminhonetels"), name = 'caminhonetels', price = 152000, banido = false, modelo = 'Caminhonete LS', capacidade = 60, tipo = 'exclusive' },		
	{ hash = GetHashKey("caminhonetesr"), name = 'caminhonetesr', price = 152000, banido = false, modelo = 'Caminhonete SR', capacidade = 60, tipo = 'exclusive' },		
	{ hash = GetHashKey("r1250ls"), name = 'r1250ls', price = 152000, banido = false, modelo = 'R1250 LS', capacidade = 60, tipo = 'exclusive' },		
	{ hash = GetHashKey("r1250sr"), name = 'r1250sr', price = 152000, banido = false, modelo = 'R1250 SR', capacidade = 60, tipo = 'exclusive' },		
	
	{ hash = GetHashKey("rmodgtr50"), name = 'rmodgtr50', price = 152000, banido = false, modelo = 'GTR50', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodjeep"), name = 'rmodjeep', price = 152000, banido = false, modelo = 'Jeep', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodjesko"), name = 'rmodjesko', price = 152000, banido = false, modelo = 'Jesko', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodlego1"), name = 'rmodlego1', price = 152000, banido = false, modelo = 'Lego1', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodlego2"), name = 'rmodlego2', price = 152000, banido = false, modelo = 'Lego2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodmartin"), name = 'rmodmartin', price = 152000, banido = false, modelo = 'Martin', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodmi8lb"), name = 'rmodmi8lb', price = 152000, banido = false, modelo = 'Mi8lb', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodsianr"), name = 'rmodsianr', price = 152000, banido = false, modelo = 'Sianr', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodskyline34"), name = 'rmodskyline34', price = 152000, banido = false, modelo = 'Skyline R34', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rs6wb"), name = 'rs6wb', price = 152000, banido = false, modelo = 'Rs6', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("saveiro"), name = 'saveiro', price = 152000, banido = false, modelo = 'Saveiro', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("tiger"), name = 'tiger', price = 152000, banido = false, modelo = 'Tiger', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("z1000"), name = 'z1000', price = 152000, banido = false, modelo = 'Z1000', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangerbope"), name = 'rangerbope', price = 152000, banido = false, modelo = 'Ranger Bope', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hiluxbope"), name = 'hiluxbope', price = 152000, banido = false, modelo = 'Hilux Bope', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("explorerprf"), name = 'explorerprf', price = 152000, banido = false, modelo = 'Explorer PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("explorer22"), name = 'explorer22', price = 152000, banido = false, modelo = 'Explorer Choque', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRtrailblazer"), name = 'WRtrailblazer', price = 152000, banido = false, modelo = 'Blazer Bope', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRr1200"), name = 'WRr1200', price = 152000, banido = false, modelo = 'R1200', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRpolmav"), name = 'WRpolmav', price = 152000, banido = false, modelo = 'Helicoptero Samu', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRhiluxsw4samu"), name = 'WRhiluxsw4samu', price = 152000, banido = false, modelo = 'Hilux Samu', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRCorolla2"), name = 'WRCorolla2', price = 152000, banido = false, modelo = 'Corolla Civil', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRasprinter"), name = 'WRasprinter', price = 152000, banido = false, modelo = 'Sprinter Samu', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRaccord"), name = 'WRaccord', price = 152000, banido = false, modelo = 'Discreto Civil', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("riot"), name = 'riot', price = 152000, banido = false, modelo = 'Caveirão', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("uh1nasa"), name = 'uh1nasa', price = 152000, banido = false, modelo = 'Gam', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("as350prf"), name = 'as350prf', price = 152000, banido = false, modelo = 'Doa', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("PRFcamaro"), name = 'PRFcamaro', price = 152000, banido = false, modelo = 'Camaro PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("PRFtrailblazer"), name = 'PRFtrailblazer', price = 152000, banido = false, modelo = 'Blazer PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ranger21grr1"), name = 'ranger21grr1', price = 152000, banido = false, modelo = 'Ranger PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRs10prf"), name = 'WRs10prf', price = 152000, banido = false, modelo = 'S10 PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRr1200prf"), name = 'WRr1200prf', price = 152000, banido = false, modelo = 'R1200 PRF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("explorer21cspp"), name = 'explorer21cspp', price = 152000, banido = false, modelo = 'Explorer Comando', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hiluxpmerj"), name = 'hiluxpmerj', price = 152000, banido = false, modelo = 'Hilux Pmerj', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("WRcorolla"), name = 'WRcorolla', price = 152000, banido = false, modelo = 'Corolla', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("2f2fgts"), name = '2f2fgts', price = 152000, banido = false, modelo = '2f2fgts', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("2f2fmk4"), name = '2f2fmk4', price = 152000, banido = false, modelo = '2f2fmk4', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("2f2frx7"), name = '2f2frx7', price = 152000, banido = false, modelo = '2f2frx7', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("2f2fs2000"), name = '2f2fs2000', price = 152000, banido = false, modelo = '2f2fs2000', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("150agstore"), name = '150agstore', price = 152000, banido = false, modelo = '150agstore', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("a452"), name = 'a452', price = 152000, banido = false, modelo = 'A452', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("acura2f2f"), name = 'acura2f2f', price = 152000, banido = false, modelo = 'Acura2f2f', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("m3f80"), name = 'm3f80', price = 152000, banido = false, modelo = 'M3 F80', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("africaagstore"), name = 'africaagstore', price = 152000, banido = false, modelo = 'Africat', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("amarokreb"), name = 'amarokreb', price = 152000, banido = false, modelo = 'Africat', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("benznatal"), name = 'benznatal', price = 152000, banido = false, modelo = 'Benznatal', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("benzsl63"), name = 'benzsl63', price = 152000, banido = false, modelo = 'Benzsl63', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bora"), name = 'bora', price = 152000, banido = false, modelo = 'Bora', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("chceltach"), name = 'celtahc', price = 152000, banido = false, modelo = 'CeltaCH', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("F250Deboxe"), name = 'F250Deboxe', price = 152000, banido = false, modelo = 'F250Deboxe', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("f850"), name = 'f850', price = 152000, banido = false, modelo = 'F850', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ff4wrx"), name = 'ff4wrx', price = 152000, banido = false, modelo = 'Subaru Impreza', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("fnfmk4"), name = 'fnfmk4', price = 152000, banido = false, modelo = 'Toyota Supra Tokyo', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("golfag"), name = 'golfag', price = 152000, banido = false, modelo = 'Golfag', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("golg2"), name = 'golg2', price = 152000, banido = false, modelo = 'Golg2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("gs2013"), name = 'gs2013', price = 152000, banido = false, modelo = 'Gs2013', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hilux2019"), name = 'hilux2019', price = 152000, banido = false, modelo = 'Hilux2019', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hornet2010"), name = 'hornet2010', price = 152000, banido = false, modelo = 'Hornet2010', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("lancer"), name = 'lancer', price = 152000, banido = false, modelo = 'Lancer', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("paredao2"), name = 'paredao2', price = 152000, banido = false, modelo = 'Paredao2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("pboxstergts"), name = 'pboxstergts', price = 152000, banido = false, modelo = 'Pboxstergts', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("pcx"), name = 'pcx', price = 152000, banido = false, modelo = 'Pcx', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("r1200gs"), name = 'r1200gs', price = 152000, banido = false, modelo = 'R1200gs', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodm3e36"), name = 'rmodm3e36', price = 152000, banido = false, modelo = 'M3e36', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("Sr650fly"), name = 'Sr650fly', price = 152000, banido = false, modelo = 'Iate', capacidade = 200, tipo = 'barco' },	
	{ hash = GetHashKey("sxr"), name = 'srx', price = 152000, banido = false, modelo = 'Srx', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("tenere1200"), name = 'tenere1200', price = 152000, banido = false, modelo = 'Tenere1200', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("treno"), name = 'treno', price = 152000, banido = false, modelo = 'Treno', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("vwsava"), name = 'vwsava', price = 152000, banido = false, modelo = 'Saveiro2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("xre3"), name = 'xre3', price = 152000, banido = false, modelo = 'Xre3', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("xreagstore"), name = 'xreagstore', price = 152000, banido = false, modelo = 'Xre', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("xtgang"), name = 'xtgang', price = 152000, banido = false, modelo = 'Xtgang', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("yacht2"), name = 'yacht2', price = 152000, banido = false, modelo = 'Iate 2', capacidade = 2000, tipo = 'barco' },	
	{ hash = GetHashKey("21avant"), name = '21avant', price = 152000, banido = false, modelo = '21avant', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("a90pit"), name = 'a90pit', price = 152000, banido = false, modelo = 'A90pit', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("casup"), name = 'casup', price = 152000, banido = false, modelo = 'Toyota Supra MK-V', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("cb650r"), name = 'cb650r', price = 152000, banido = false, modelo = 'Cb650r', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("d35"), name = 'd35', price = 152000, banido = false, modelo = 'D35', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("fz07"), name = 'fz07', price = 152000, banido = false, modelo = 'Fz07', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ie"), name = 'ie', price = 152000, banido = false, modelo = 'Ie', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("km1000rr"), name = 'km1000rr', price = 152000, banido = false, modelo = 'M1000RR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ksd"), name = 'ksd', price = 152000, banido = false, modelo = 'Ksd', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("m8f91"), name = 'm8f91', price = 152000, banido = false, modelo = 'M8f91', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("mvisiongt"), name = 'mvisiongt', price = 152000, banido = false, modelo = 'Mvisiongt', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("q8prior"), name = 'q8prior', price = 152000, banido = false, modelo = 'Q8', capacidade = 200, tipo = 'exclusive' },	
	{ hash = GetHashKey("yzfr7"), name = 'yzfr7', price = 152000, banido = false, modelo = 'Yzfr7', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodcamaro"), name = 'rmodcamaro', price = 152000, banido = false, modelo = 'Camaro 3.0', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("swift2"), name = 'swift2', price = 152000, banido = false, modelo = 'Swift', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("trash"), name = 'trash', price = 152000, banido = false, modelo = 'Caminhão De Lixo', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("trash2"), name = 'trash2', price = 152000, banido = false, modelo = 'Caminhão De Lixo 2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangerchoquel"), name = 'rangerchoquel', price = 152000, banido = false, modelo = 'Ranger Choque2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangerchoque"), name = 'rangerchoque', price = 152000, banido = false, modelo = 'Ranger Choque', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangercore"), name = 'rangercore', price = 152000, banido = false, modelo = 'Ranger Core', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangercorec"), name = 'rangercorec', price = 152000, banido = false, modelo = 'Ranger Core2', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rangerpcerj"), name = 'rangerpcerj', price = 152000, banido = false, modelo = 'Ranger Pcerj', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangerpcerjc"), name = 'rangerpcerjc', price = 152000, banido = false, modelo = 'Ranger Pcerj2', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rangerptm"), name = 'rangerptm', price = 152000, banido = false, modelo = 'Ranger Pmerj', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyrepairls"), name = 'energyrepairls', price = 152000, banido = false, modelo = 'Caminhão LS', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyrepair"), name = 'energyrepair', price = 152000, banido = false, modelo = 'Caminhão SR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyraptorls"), name = 'energyraptorls', price = 152000, banido = false, modelo = 'Caminhonete LS', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyraptor"), name = 'energyraptor', price = 152000, banido = false, modelo = 'Caminhonete SR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyr1200"), name = 'energyr1200', price = 152000, banido = false, modelo = 'R1200 SR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyr1200ls"), name = 'energyr1200ls', price = 152000, banido = false, modelo = 'R1200 LS', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("energyr1200samu"), name = 'energyr1200samu', price = 152000, banido = false, modelo = 'R1200 SAMU', capacidade = 60, tipo = 'exclusive' },
	

	{ hash = GetHashKey("160chumbo"), name = '160chumbo', price = 152000, banido = false, modelo = 'CG 160', capacidade = 30, tipo = 'motos' },	
	{ hash = GetHashKey("240sxhr"), name = '240sxhr', price = 152000, banido = false, modelo = '240sXHR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("420x"), name = '420x', price = 152000, banido = false, modelo = '420X', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("1500ghoul"), name = '1500ghoul', price = 152000, banido = false, modelo = '1500 Ghoul', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("africa"), name = 'africa', price = 152000, banido = false, modelo = 'Honda Africa', capacidade = 30, tipo = 'motos' },
	{ hash = GetHashKey("ahksv"), name = 'ahksv', price = 152000, banido = false, modelo = 'Lamborghini AHKSV', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("amels200"), name = 'amels200', price = 152000, banido = false, modelo = 'Yate', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("amggtc"), name = 'amggtc', price = 152000, banido = false, modelo = 'Mercedes GTC', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("babyr1250"), name = 'babyr1250', price = 152000, banido = false, modelo = 'R1250 KID', capacidade = 30, tipo = 'motos' },	
	{ hash = GetHashKey("auditt"), name = 'auditt', price = 152000, banido = false, modelo = 'Audi TT', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ar8lb"), name = 'ar8lb', price = 152000, banido = false, modelo = 'Audi R8LB', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("babyamarokbr"), name = 'babyamarokbr', price = 152000, banido = false, modelo = 'Amarok KID', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bmwboltz"), name = 'bmwboltz', price = 152000, banido = false, modelo = 'Bmw Boltz', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bmwm1wb"), name = 'bmwm1wb', price = 152000, banido = false, modelo = 'Bmw M1', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("c7"), name = 'c7', price = 152000, banido = false, modelo = 'Corvette C7', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("cad"), name = 'cad', price = 152000, banido = false, modelo = 'Cadilac', capacidade = 30, tipo = 'exclusive' },	
	{ hash = GetHashKey("cb1000r2013"), name = 'cb1000r2013', price = 152000, banido = false, modelo = 'Honda CB100r', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("cbb"), name = 'cbb', price = 152000, banido = false, modelo = 'Honada Cbb', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("cbrr"), name = 'cbrr', price = 152000, banido = false, modelo = 'Honda Cbrr', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("bmwm3f80"), name = 'bmwm3f80', price = 152000, banido = false, modelo = 'Bmwm F80', capacidade = 30, tipo = 'exclusive' },
	{ hash = GetHashKey("bmwm8gte"), name = 'bmwm8gte', price = 152000, banido = false, modelo = 'Bmw GTE', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("bmwm135i"), name = 'bmwm135i', price = 152000, banido = false, modelo = 'Bmw M135I', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("brickade"), name = 'brickade', price = 152000, banido = false, modelo = 'Brickade', capacidade = 3000, tipo = 'exclusive' },	
	{ hash = GetHashKey("chillybin"), name = 'chillybin', price = 152000, banido = false, modelo = 'Chillybin', capacidade = 30, tipo = 'exclusive' },	
	{ hash = GetHashKey("declassbmw"), name = 'declassbmw', price = 152000, banido = false, modelo = 'Bmw Declass', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("etrongt22"), name = 'etrongt22', price = 152000, banido = false, modelo = 'Audi GT22', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("babyamarokbr"), name = 'babyamarokbr', price = 152000, banido = false, modelo = 'Amarok KID', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("evox"), name = 'evox', price = 152000, banido = false, modelo = 'Lancer Evolution EVOX', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("fd"), name = 'fd', price = 152000, banido = false, modelo = 'Supra', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxc8wb"), name = 'foxc8wb', price = 152000, banido = false, modelo = 'Corvette C8WB', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("foxevos"), name = 'foxevos', price = 152000, banido = false, modelo = 'Lamborghini Evo', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("frauscher16r"), name = 'frauscher16', price = 152000, banido = false, modelo = 'frauscher16', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("g7cross"), name = 'g7cross', price = 152000, banido = false, modelo = 'Saveiro G7Cross', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("gle53"), name = 'gle53', price = 152000, banido = false, modelo = 'Mercedes GLE53', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("golfp"), name = 'golfp', price = 152000, banido = false, modelo = 'Golf Sportiline', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("gt63samg"), name = 'gt63samg', price = 152000, banido = false, modelo = 'Mercedes Gt63', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("gxa45"), name = 'gxa45', price = 152000, banido = false, modelo = 'Mercedes A45', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("hcbr17"), name = 'hcbr17', price = 152000, banido = false, modelo = 'Honda CBR 2017', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("hornet2014"), name = 'hornet2014', price = 152000, banido = false, modelo = 'Honert 2014', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("jeepag"), name = 'jeepag', price = 152000, banido = false, modelo = 'Jeep KID', capacidade = 200, tipo = 'exclusive' },	
	{ hash = GetHashKey("jettagli"), name = 'jettagli', price = 152000, banido = false, modelo = 'Jetta GLI', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("LBM4"), name = 'LBM4', price = 152000, banido = false, modelo = 'Bmw M4S', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("lw458s"), name = 'lw458s', price = 152000, banido = false, modelo = 'Ferrari LW458S', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("lwgtr"), name = 'lwgtr', price = 152000, banido = false, modelo = 'Nissan Skyline GTR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("lwgtr2"), name = 'lwgtr2', price = 152000, banido = false, modelo = 'Nissan Skyline GTR2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("mansurus"), name = 'mansurus', price = 152000, banido = false, modelo = 'Urus Rebaixada', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("MG63PxxBK"), name = 'MG63PxxBK', price = 152000, banido = false, modelo = 'Mercedes G63P', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("mt09"), name = 'mt09', price = 152000, banido = false, modelo = 'MT 09', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("nxchuteira"), name = 'nxchuteira', price = 152000, banido = false, modelo = 'Chuteira', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("ocnetrongt"), name = 'ocnetrongt', price = 152000, banido = false, modelo = 'Aud OcnetronGT', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("opalass"), name = 'opalass', price = 152000, banido = false, modelo = 'Opala ss', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("p90d"), name = 'p90d', price = 152000, banido = false, modelo = 'Tesla P90D', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("paratisom"), name = 'paratisom', price = 152000, banido = false, modelo = 'Parati Som', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("polestar1"), name = 'polestar1', price = 152000, banido = false, modelo = 'Polestar ', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("porscheag"), name = 'porscheag', price = 152000, banido = false, modelo = 'Porsche KID', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("pounder2"), name = 'pounder2', price = 152000, banido = false, modelo = 'Pounder 2', capacidade = 1000, tipo = 'exclusive' },	
	{ hash = GetHashKey("r34g"), name = 'r34g', price = 152000, banido = false, modelo = 'Nissan Skyline R34G', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("ram2500"), name = 'ram2500', price = 152000, banido = false, modelo = 'Dodge Ram2500', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rangeroverstartech"), name = 'rangeroverstartech', price = 152000, banido = false, modelo = 'Range Rover', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("RC350"), name = 'RC350', price = 152000, banido = false, modelo = 'Lexus RC350', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rimac"), name = 'rimac', price = 152000, banido = false, modelo = 'Rimac', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodbentleygt"), name = 'rmodbentleygt', price = 152000, banido = false, modelo = 'Bentley GT', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodbmwm8"), name = 'rmodbmwm8', price = 152000, banido = false, modelo = 'BMW M8', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodcharger69"), name = 'rmodcharger69', price = 152000, banido = false, modelo = 'Dodge Charger RT', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodescort"), name = 'rmodescort', price = 152000, banido = false, modelo = 'Ford Escort', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodf12tdf"), name = 'rmodf12tdf', price = 152000, banido = false, modelo = 'Ferrari TDF', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodg65"), name = 'rmodg65', price = 152000, banido = false, modelo = 'Mercedes G65', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("rmodgt63"), name = 'rmodgt63', price = 152000, banido = false, modelo = 'Mercedes G63', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("rmodgt63mini"), name = 'rmodgt63mini', price = 152000, banido = false, modelo = 'Mercedes G63 KID', capacidade = 200, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodi8ks"), name = 'rmodi8ks', price = 152000, banido = false, modelo = 'Bmw I8KS', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodlfa"), name = 'rmodlfa', price = 152000, banido = false, modelo = 'Lexus FA', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodlp670"), name = 'rmodlp670', price = 152000, banido = false, modelo = 'Lamborghini LP670', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodm4gts"), name = 'rmodm4gts', price = 152000, banido = false, modelo = 'Bmw M4GTS', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodm5e34"), name = 'rmodm5e34', price = 152000, banido = false, modelo = 'Bmw M5E34', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodmonster"), name = 'rmodmonster', price = 152000, banido = false, modelo = 'Monster', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodmonstergt"), name = 'rmodmonstergt', price = 152000, banido = false, modelo = 'Mercedes G63 Monster', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodmonsterr34"), name = 'rmodmonsterr34', price = 152000, banido = false, modelo = 'Nissan Skyline R34 Monster', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodp1gtr"), name = 'rmodp1gtr', price = 152000, banido = false, modelo = 'McLaren P1', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rmodporsche918"), name = 'rmodporsche918', price = 152000, banido = false, modelo = 'Porsche 918', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodrs7"), name = 'rmodrs7', price = 152000, banido = false, modelo = 'Audi RS7', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("rmodsuprapandem"), name = 'rmodsuprapandem', price = 152000, banido = false, modelo = 'Supra Pandem', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodtracktor"), name = 'rmodtracktor', price = 152000, banido = false, modelo = 'Trator', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rmodtracktor2"), name = 'rmodtracktor2', price = 152000, banido = false, modelo = 'Trator 2', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rrs08"), name = 'rrs08', price = 152000, banido = false, modelo = 'Range Rover', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("rs6c8"), name = 'rs6c8', price = 152000, banido = false, modelo = 'Audi RS6', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("s1hr"), name = 's1hr', price = 152000, banido = false, modelo = 'Audi S1HR', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("s10hc"), name = 's10hc', price = 152000, banido = false, modelo = 'Chevrolet S10', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("s14hachi"), name = 's14hachi', price = 152000, banido = false, modelo = 'Nissan Silvia S14', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("s15varietta"), name = 's15varietta', price = 152000, banido = false, modelo = 'Nissan Silvia S15', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("s1000docandidato"), name = 's1000docandidato', price = 152000, banido = false, modelo = 'Bmw S1000', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("skylinekid"), name = 'skylinekid', price = 152000, banido = false, modelo = 'Nissan Skyline Kid', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("sr1"), name = 'sr1', price = 152000, banido = false, modelo = 'BMW SR1', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("tiger1200"), name = 'tiger1200', price = 152000, banido = false, modelo = 'Tiger 1200', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("titanh"), name = 'titanh', price = 152000, banido = false, modelo = 'Nissan Titanh', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("topcar911"), name = 'topcar911', price = 152000, banido = false, modelo = 'Porsche 911', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("trailblazer"), name = 'trailblazer', price = 152000, banido = false, modelo = 'Trail Blazer', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("up"), name = 'up', price = 152000, banido = false, modelo = 'Volksvagen UP', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("v4sf"), name = 'v4sf', price = 152000, banido = false, modelo = 'Yamaha Ducati', capacidade = 200, tipo = 'motos' },	
	{ hash = GetHashKey("velociraptor"), name = 'velociraptor', price = 152000, banido = false, modelo = 'Ford Velociraptor', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("vette"), name = 'vette', price = 152000, banido = false, modelo = 'Corvette', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("wrx"), name = 'wrx', price = 152000, banido = false, modelo = 'Subaru Wrx', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("xc90r"), name = 'xc90r', price = 152000, banido = false, modelo = 'Volvo XC90R', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("xt66"), name = 'xt66', price = 152000, banido = false, modelo = 'Xt66', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("xt660vip"), name = 'xt660vip', price = 152000, banido = false, modelo = 'Xt660', capacidade = 60, tipo = 'motos' },	
	{ hash = GetHashKey("xxxxx"), name = 'xxxxx', price = 152000, banido = false, modelo = 'Mercedes Monsteer', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("yacht3a"), name = 'yacht3a', price = 152000, banido = false, modelo = 'Yacht 3', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("yamahar1"), name = 'yamahar1', price = 152000, banido = false, modelo = 'Yamaha R1', capacidade = 60, tipo = 'motos' },
	{ hash = GetHashKey("z4bmw"), name = 'z4bmw', price = 152000, banido = false, modelo = 'Bmw Z4', capacidade = 60, tipo = 'exclusive' },	
	{ hash = GetHashKey("zx10"), name = 'zx10', price = 152000, banido = false, modelo = 'Bmw ZX10', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("silvia"), name = 'silvia', price = 152000, banido = false, modelo = 'Silvia', capacidade = 60, tipo = 'exclusive' },
	{ hash = GetHashKey("golfrebaixado"), name = 'golfrebaixado', price = 152000, banido = false, modelo = 'Golf Rebaixado', capacidade = 60, tipo = 'exclusive' },

	{ hash = GetHashKey("polmav"), name = 'polmav', price = 152000, banido = false, modelo = 'Helicóptero Policia', capacidade = 60, tipo = 'work' },	
	{ hash = GetHashKey("polr34"), name = 'polr34', price = 152000, banido = false, modelo = 'Nissan Skyline R34 Policia', capacidade = 60, tipo = 'work' },	
	{ hash = GetHashKey("vrdm1200"), name = 'vrdm1200', price = 152000, banido = false, modelo = 'Ducati 1200 Policia', capacidade = 60, tipo = 'work' },	
	{ hash = GetHashKey("polgtr"), name = 'polgtr', price = 152000, banido = false, modelo = 'Nissan Skyline GTR Policia', capacidade = 60, tipo = 'work' },	
	{ hash = GetHashKey("polgtr50"), name = 'polgtr50', price = 152000, banido = false, modelo = 'Nissan Skyline GTR50 Policia', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("polbmwhz"), name = 'polbmwhz', price = 152000, banido = false, modelo = 'Bmw Boltz', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("cdaraptor"), name = 'cdaraptor', price = 152000, banido = false, modelo = 'Raptor Mecânica', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("scaniarepair"), name = 'scaniarepair', price = 152000, banido = false, modelo = 'Guincho', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("emsjeep"), name = 'emsjeep', price = 152000, banido = false, modelo = 'Jeep EMS', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("emsrobozao"), name = 'emsrobozao', price = 152000, banido = false, modelo = 'R1250 EMS', capacidade = 60, tipo = 'work' },
	{ hash = GetHashKey("bananao"), name = 'bananao', price = 152000, banido = false, modelo = 'Bananão', capacidade = 60, tipo = 'work' },
}
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------


-- RETORNA A LISTA DE VEÍCULOS
config.getVehList = function()
	return config.vehList
end

-- RETORNA AS INFORMAÇÕES CONTIDAS NA LISTA DE UM VEÍCULO ESPECÍFICO
config.getVehicleInfo = function(vehicle)
	for i in ipairs(config.vehList) do
		if vehicle == config.vehList[i].hash or vehicle == config.vehList[i].name then
            return config.vehList[i]
        end
    end
    return false
end

-- RETORNA O MODELO DE UM VEÍCULO ESPECÍFICO (NOME BONITINHO)
config.getVehicleModel = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.modelo or vehicle
	end
	return vehicle
end

-- RETORNA A CAPACIDADE DO PORTA-MALAS DE UM VEÍCULO ESPECÍFICO
config.getVehicleTrunk = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.capacidade or 0
	end
	return 0
end

-- RETORNA O PREÇO DE UM VEÍCULO ESPECÍFICO
config.getVehiclePrice = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.price or 0
	end
	return 0
end

-- RETORNA O TIPO DE UM VEÍCULO ESPECÍFICO
config.getVehicleType = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.tipo or 0
	end
	return "none"
end

-- RETORNA O STATUS DE BANIDO DE UM VEÍCULO ESPECÍFICO
config.isVehicleBanned = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.banido
	end
	return false
end
-----------------------------------------------------------------
------------- GARAGENS PÚBLICAS E DE SERVIÇO --------------------
-----------------------------------------------------------------

config.garages = {
	[1] = { type = "public", coords = vec3(55.46,-876.29,30.66), name = "Garagem", 
		vehiclePositions = {
			[1] = { vec3(50.92,-872.96,30.44), h = 339.16},
			[2] = { vec3(47.28,-872.43,30.44), h = 339.16},
			[3] = { vec3(44.22,-871.12,30.44), h = 339.16}
		} 
	},

	[2] = { type = "public", coords = vec3(214.01,-808.47,31.01), 
		vehiclePositions = {
			[1] = { vec3(220.62, -806.55, 30.33), h = 249.19 },
			[2] = { vec3(221.93, -804.0, 30.32), h = 249.49},
			[3] = { vec3(222.46, -801.42, 30.31), h = 249.64 }
		} 
	},

	[3] = { type = "public", coords = vec3(-348.93,-874.38,31.31), 
		vehiclePositions = {
			[1] = { vec3(-343.16,-874.99,31.07), h = 167.73 },
			[2] = { vec3(-339.70,-875.44,31.07), h = 159.65 },
			[3] = { vec3(-336.19,-876.35,31.07), h = 170.92 }
		} 
	},

	[4] = { type = "public", coords = vec3(-73.47,-2004.55,18.27), 
		vehiclePositions = {
			[1] = { vec3(-81.71,-2006.66,18.01), h = 347.38},
			[2] = { vec3(-89.22,-2005.61,18.01), h = 344.18},
			[3] = { vec3(-85.47,-2005.38,18.01), h = 354.17}
		} 
	},
	
	[5] = { type = "public", coords = vec3(596.67, 91.22, 93.13), 
		vehiclePositions = { 
			[1] = { vec3(598.35, 98.5, 92.91), h = 250.28},
			[2] = { vec3(599.25, 102.31, 92.91), h = 250.28},
			[3] = { vec3(608.63, 103.99, 92.81), h = 71.01}
		} 
	},

	[6] = { type = "public", coords = vec3(362.06, 298.07, 103.89), 
		vehiclePositions = { 
			[1] = { vec3(361.09, 293.61, 103.50), h = 244.01},
			[2] = { vec3(359.86, 289.91, 103.50), h = 254.50},
			[3] = { vec3(358.01, 286.39, 103.50), h = 242.90}
		} 
	},

	[7] = { type = "public", coords = vec3(275.33, -345.41, 45.18), 
		vehiclePositions = { 
			[1] = { vec3(283.89, -342.66, 44.92), h = 248.74},
			[2] = { vec3(284.96, -339.21, 44.92), h = 244.73},
			[3] = { vec3(286.07, -336.02, 44.92), h = 245.42}
		} 
	},

	[8] = { type = "public", coords = vec3(-1184.42, -1509.6, 4.65), 
		vehiclePositions = { 
			[1] = { vec3(-1183.07, -1495.60, 4.38), h = 121.19},
			[2] = { vec3(-1185.00, -1492.94, 4.38), h = 123.01},
			[3] = { vec3(-1186.66, -1490.42, 4.38), h = 119.76}
		} 
	},

	[9] = { type = "public", coords = vec3(-2030.0,-465.87,11.61), 
		vehiclePositions = { 
			[1] = { vec3(-2024.25,-471.89,11.41), h = 140.0},
			[2] = { vec3(-2021.78,-473.74,11.41), h = 140.0},
		} 
	},

	[10] = { type = "public", coords = vec3(-340.72, 266.76, 85.68), 
		vehiclePositions = { 
			[1] = { vec3(-340.01, 279.13, 85.55), h = 275.98},
			[2] = { vec3(-339.82, 283.18, 85.48), h = 275.00},
			[3] = { vec3(-340.40, 286.75, 85.45), h = 274.15}
		} 
	},
	[11] = { type = "public", coords = vec3(984.24, -206.15, 71.07), 
		vehiclePositions = { 
			[1] = { vec3(991.65, -215.58, 69.88), h = 56.88}
		} 
	},

	[12] = { type = "public", coords = vec3(817.34, -2146.96, 29.34), 
		vehiclePositions = { 
			[1] = { vec3(822.51, -2142.73, 28.86), h = 359.06},
			[2] = { vec3(820.94, -2117.88, 29.35), h = 174.48},
			[3] = { vec3(812.93, -2117.12, 29.35), h = 175.23}
		} 
	},

	[13] = { type = "public", coords = vec3(42.67, -1599.22, 29.6), 
		vehiclePositions = { 
			[1] = { vec3(38.99, -1594.64, 29.46), h = 43.72},
			[2] = { vec3(41.06, -1592.35, 29.46), h = 47.95},
			[3] = { vec3(42.46, -1589.35, 29.46), h = 50.04}
		} 
	},

	[14] = { type = "public", coords = vec3(-1583.97, -887.13, 9.87), 
		vehiclePositions = { 
			[1] = { vec3(-1591.17, -896.05, 9.56), h = 320.17},
			[2] = { vec3(-1588.91, -898.02, 9.60), h = 320.65},
			[3] = { vec3(-1586.43, -899.79, 9.62), h = 311.61}
		} 
	},

	[15] = { type = "public", coords = vec3(713.74,-977.77,24.13), 
		vehiclePositions = { 
			[1] = { vec3(711.06,-979.62,24.12), h = 225.0},
			[2] = { vec3(706.2,-979.68,24.14), h = 225.0},
		} 
	},

	[16] = { type = "public", coords = vec3(1183.63, 2702.0, 38.17), 
		vehiclePositions = { 
			[1] = { vec3(1186.59, 2696.77, 37.96), h = 185.48},
			[2] = { vec3(1190.26, 2696.29, 37.95), h = 178.63},
			[3] = { vec3(1193.57, 2695.67, 37.93), h = 184.93}
		} 
	},

	[17] = { type = "public", coords = vec3(902.39, 3657.62, 32.69), 
		vehiclePositions = { 
			[1] = { vec3(900.33, 3653.32, 32.76), h = 90.00},
			[2] = { vec3(900.09, 3649.69, 32.76), h = 91.48},
			[3] = { vec3(899.83, 3646.14, 32.76), h = 91.48}
		} 
	},

	[18] = { type = "public", coords = vec3(1553.6, 3797.03, 34.26), 
		vehiclePositions = { 
			[1] = { vec3(1557.09, 3788.28, 34.10), h = 208.36},
			[2] = { vec3(1549.74, 3784.01, 34.07), h = 200.04},
			[3] = { vec3(1546.11, 3782.46, 34.06), h = 195.85}
		} 
	},

	[19] = { type = "public", coords = vec3(2736.88, 3438.09, 56.41), 
		vehiclePositions = { 
			[1] = { vec3(2730.22, 3435.86, 56.37), h = 152.27},
			[2] = { vec3(2726.71, 3437.69, 56.22), h = 149.39},
			[3] = { vec3(2722.98, 3439.21, 56.08), h = 150.92}
		} 
	},

	[20] = { type = "public", coords = vec3(1695.06, 4783.03, 42.0), 
		vehiclePositions = { 
			[1] = { vec3(1691.73, 4778.46, 41.92), h = 90.29},
			[2] = { vec3(1691.61, 4774.40, 41.92), h = 89.73},
			[3] = { vec3(1691.64, 4770.41, 41.92), h = 87.60}
		} 
	},

	[21] = { type = "public", coords = vec3(-274.63, 6070.14, 31.47), 
		vehiclePositions = { 
			[1] = { vec3(-270.30, 6070.37, 31.46), h = 123.27},
			[2] = { vec3(-267.63, 6067.51, 31.46), h = 123.05},
			[3] = { vec3(-265.07, 6064.78, 31.46), h = 117.52}
		} 
	},

	[22] = { type = "public", coords = vec3(1712.83, 6423.73, 32.75), 
		vehiclePositions = { 
			[1] = { vec3(1720.29, 6422.03, 33.56), h = 67.05},
			[2] = { vec3(1718.98, 6419.67, 33.56), h = 66.49},
			[3] = { vec3(1717.71, 6416.40, 33.56), h = 69.28}
		} 
	},

	[23] = { type = "public", coords = vec3(-1158.97, -739.99, 19.89),
		vehiclePositions = { 
			[1] = { vec3(-1145.54, -745.42, 19.67), h = 104.13},
			[2] = { vec3(-1143.08, -748.27, 19.53), h = 115.84},
			[3] = { vec3(-1140.12, -751.22, 19.39), h = 112.41}
		} 
	},

	[24] = { type = "service", coords = vec3(-501.14,-671.11,33.05), marker = "bicicleta", 
		vehiclePositions = {
			[1] = { vec3(-499.16,-668.84,32.87), h = 350.88},
			[2] = { vec3(-495.99,-668.71,32.83), h = 350.88}
		},
		vehicles = {
			{ vehicle = "bmx", modelo = "Bmx" },
			{ vehicle = "scorcher", modelo = "Scorcher" },
			{ vehicle = "tribike", modelo = "Tribike" },
			{ vehicle = "tribike2", modelo = "Tribike 2" },
			{ vehicle = "tribike3", modelo = "Tribike 3" },
			{ vehicle = "cruiser", modelo = "Cruiser" },
		} 
	},

	[25] = { type = "service", coords = vec3(-348.57, -1572.03, 25.23), marker = "truck",
		vehiclePositions = {
			[1] = { vec3(-334.80, -1564.41, 25.23), h = 56.90},
			[2] = { vec3(-341.72, -1558.79, 25.23), h = 178.68},
			[3] = { vec3(-344.62, -1575.51, 25.23), h = 10.73}
		},
		vehicles = {
			{ vehicle = "trash", modelo = "Trash" },
			{ vehicle = "trash2", modelo = "Trash 2" }
		} 
	},

	[26] = { type = "service", coords = vec3(898.88, -177.08, 73.82),
		vehiclePositions = {
			[1] = { vec3(908.77, -183.16, 74.21), h = 55.38},
			[2] = { vec3(907.04, -186.39, 74.01), h = 56.39},
			[3] = { vec3(905.35, -189.10, 73.79), h = 58.51}
		},
		vehicles = {
			{ vehicle = "taxi", modelo = "Taxi" },
		} 
	},

	 [27] = { type = "service", coords = vec3(453.84,-599.99,28.59), marker = "truck",
	 	vehiclePositions = {
	 		 [1] = { vec3 (463.39,-606.79,28.5), h = 213.13},
	 		-- [2] = { vec3(461.21, -611.50, 28.50), h = 215.52},
	 		-- [3] = { vec3(460.64, -619.10, 28.50), h = 211.85}
	 	},
	 	vehicles = {
	 		{ vehicle = "bus", modelo = "Bus" }
	 	} 
	 },

	
	 [28] = { type = "service", coords = vec3(748.82,6454.17,31.97), marker = "truck",
	 	vehiclePositions = {
	 		 [1] = { vec3 (747.76,6448.11,32.07), h = 80.00},
	 		-- [2] = { vec3(461.21, -611.50, 28.50), h = 215.52},
	 		-- [3] = { vec3(460.64, -619.10, 28.50), h = 211.85}
	 	},
	 	vehicles = {
	 		{ vehicle = "tractor2", modelo = "Tractor" }
	 	} 
	 },
	 [29] = { type = "service", coords = vec3(18.07,-1614.31,29.41), marker = "moto",
	 vehiclePositions = {
		  [1] = { vec3 (16.03,-1613.54,29.3), h = 130.00},
		 -- [2] = { vec3(461.21, -611.50, 28.50), h = 215.52},
		 -- [3] = { vec3(460.64, -619.10, 28.50), h = 211.85}
	 },
	 vehicles = {
		 { vehicle = "akuma", modelo = "Akuma" }
	 } 
    },
	[30] = { type = 'service', coords = vec3(-1179.69, -886.33, 13.81), perm = nil,
	vehiclePositions = {
	  [1] = { vec3(-1173.27, -876.86, 14.11), h = 302.66 },
	},
	vehicles = {
	
	  { vehicle = 'cg160', modelo = 'Moto Ifood' },  
	
	}
	},
	[31] = { type = 'service', coords = vec3(1145.8,-1515.34,34.85), perm = "paramedico.permissao",
		vehiclePositions = {
		  [1] = { vec3(1148.7,-1510.54,34.7), h = 361.0 },
		},
		vehicles = {
		
		  { vehicle = 'emsjeep', modelo = 'Jeep EMS' },  
		  { vehicle = 'emsrobozao', modelo = 'R1250 EMS' },
		
		}
	},
	[32] = { type = 'service', coords = vec3(-41.92, -2521.49, 6.16), perm = nil,
			vehiclePositions = {
			  [1] = { vec3(-40.01, -2522.81, 6.02), h = 326.33 },
			},
			vehicles = {
			
			  { vehicle = 'picador', modelo = 'Carro do Gaz' },  
			
			}
	
	},
	[33] = { type = 'service', coords = vec3(-1347.01, 140.16, 56.26), perm = nil,
	vehiclePositions = {
	  [1] = { vec3(-1338.42, 143.1, 57.12), h = 326.33 },
	},
	vehicles = {
	
	  { vehicle = 'mower', modelo = 'Carro do Jardineiro' },  
	
	}
	
   },
[34] = { type = 'service', coords = vec3(-437.51, -320.84, 34.92), perm = nil,
vehiclePositions = {
  [1] = { vec3(-435.58, -321.47, 34.92), h = 66.96 },
},
vehicles = {

  { vehicle = 'wheelchair', modelo = 'Cadeira de Rodas' },  

}
},
[35] = { type = 'service', coords = vec3(817.0, -2147.29, 29.37), perm = nil,
vehiclePositions = {
  [1] = { vec3(821.45, -2138.33, 29.21), h = 2.63 },
},
vehicles = {

  { vehicle = 'mule4', modelo = 'Caminhão Ammu' },
}
},
[36] = { type = "public", coords = vec3(-1535.23, 96.67, 56.77), 
vehiclePositions = { 
	[1] = { vec3(-1527.75, 93.55, 56.24), h = 228.74},

	} 
},
[37] = { type = 'service', coords = vec3(-2045.41, -448.6, 19.4), perm = "polcia.permissao",
vehiclePositions = {
	[1] = { vec3(-2051.11, -457.77, 19.73), h =  19.73 },
},
vehicles = {
  
	{ vehicle = 'maverick', modelo = 'Heli Policia PMERJ' },
}
},
[38] = { type = 'service', coords = vec3(-1683.4, -756.62, 17.88), perm = "viaturas-bope.permissao",
vehiclePositions = {
	[1] = { vec3(-1689.54, -765.18, 18.32), h =  18.32 },
},
vehicles = {
  
	{ vehicle = 'helibope', modelo = 'Heli Bope' },	
}
},
[39] = { type = 'service', coords = vec3(-706.74, -1463.79, 5.05), perm = "viaturas-bope.permissao",
vehiclePositions = {
	[1] = { vec3(-724.66, -1444.05, 5.44), h =  5.44 },
},
vehicles = {
  
	{ vehicle = 'helibope', modelo = 'Heli Bope' },	
}
},
[40] = { type = "service", coords = vec3(1145.33,-1601.24,34.85), perm = "paramedico.permissao", marker = "helicóptero",
vehiclePositions = {
	[1] = { vec3(1138.22,-1608.23,34.7), h = 175.00},
},
vehicles = {
	{ vehicle = "supervolito", modelo = "Helicóptero Médico" }
} 
},
[41] = { type = "service", coords = vec3(-950.75,-2032.88,11.62), perm = "policia.permissao", marker = "helicóptero",
vehiclePositions = {
	[1] = { vec3(-951.19,-2020.93,11.33), h = 135.00},
},
vehicles = {
	{ vehicle = "polmav", modelo = "Helicóptero Policia" }
} 
},
[42] = { type = "service", coords = vec3(-164585.0, -78456.87, 1450.75), perm = "radiobope.permissao",   ----- GARAGEM BOPE
vehiclePositions = {
	[1] = { vec3(-1679.74, -788.2, 10.31), h = 318.74}

},
vehicles = {
	{ vehicle = "riot", modelo = "Caveirão" },
	{ vehicle = "amarokbope", modelo = "Amarok Bope" },
	{ vehicle = "hiluxbope", modelo = "Hilux Bope" },
	{ vehicle = "WRtrailblazer", modelo = "Blazer Bope" },
	{ vehicle = "rangerbope", modelo = "Ranger Bope" },
	} 
},
[43] = { type = "service", coords = vec3(-914.53, -2045.84, 9.41), perm = "policia.permissao",    -----GARAGEM CIVIL
vehiclePositions = {
	[1] = { vec3(-909.92, -2047.6, 8.94), h = 225.49},
	[2] = { vec3(-907.82, -2045.0, 8.94), h = 224.68}

},
vehicles = {
	{ vehicle = "polr34", modelo = "Nissan Skyline R34" },
	{ vehicle = "polgtr", modelo = "Nissan Skyline GTR" },
	{ vehicle = "polgtr50", modelo = "Nissan Skyline GTR50" },
	{ vehicle = "polbmwhz", modelo = "Bmw Boltz" },
	{ vehicle = "polgt17", modelo = "Ford GT70" },
	{ vehicle = "VRdm1200", modelo = "Ducati 1200" },
	},
},
[44] = { type = "service", coords = vec3(-295.0, 6042.7, 32.62), perm = "prf.permissao",  ---GARAGEM PRF
vehiclePositions = {
	[1] = { vec3(-299.02, 6041.46, 32.16), h = 45.2}


},
vehicles = {
	{ vehicle = "riot", modelo = "Caveirão" },
	{ vehicle = "ranger21grr1", modelo = "Ranger PRF" },
	{ vehicle = "PRFcamaro", modelo = "Camaro PRF" },
	{ vehicle = "WRs10prf", modelo = "S10 PRF" },
	{ vehicle = "PRFtrailblazer", modelo = "Blazer PRF" },
	{ vehicle = "explorerprf", modelo = "Explorer PRF" },
	{ vehicle = "WRr1200prf", modelo = "R1200 PRF" },
	} 
},
[45] = { type = "service", coords = vec3(-2834.7, 25.89, 16.22), perm = "prf.permissao", ---- GARAGEM PRF
vehiclePositions = {
	[1] = { vec3(-2839.21, 24.79, 15.72), h = 338.21}


},
vehicles = {
	{ vehicle = "riot", modelo = "Caveirão" },
	{ vehicle = "ranger21grr1", modelo = "Ranger PRF" },
	{ vehicle = "PRFcamaro", modelo = "Camaro PRF" },
	{ vehicle = "WRs10prf", modelo = "S10 PRF" },
	{ vehicle = "PRFtrailblazer", modelo = "Blazer PRF" },
	{ vehicle = "explorerprf", modelo = "Explorer PRF" },
	{ vehicle = "WRr1200prf", modelo = "R1200 PRF" },
	} 
},
[46] = { type = "service", coords = vec3(2621.79, 5313.3, 47.55), perm = "prf.permissao", ----- GARAGEM PRF
vehiclePositions = {
	[1] = { vec3(2619.41, 5309.19, 47.05), h = 106.19},
	[2] = { vec3(2620.55, 5306.05, 47.04), h = 107.32},
	[3] = { vec3(2621.33, 5302.85, 47.04), h = 105.73}

},
vehicles = {
	{ vehicle = "riot", modelo = "Caveirão" },
	{ vehicle = "ranger21grr1", modelo = "Ranger PRF" },
	{ vehicle = "PRFcamaro", modelo = "Camaro PRF" },
	{ vehicle = "WRs10prf", modelo = "S10 PRF" },
	{ vehicle = "PRFtrailblazer", modelo = "Blazer PRF" },
	{ vehicle = "explorerprf", modelo = "Explorer PRF" },
	{ vehicle = "WRr1200prf", modelo = "R1200 PRF" },

	} 
},
[47] = { type = "service", coords = vec3(1507.2, 773.9, 78.5), perm = "prf.permissao", ----- GARAGEM PRF
vehiclePositions = {
	[1] = { vec3(1499.14, 774.25, 77.55), h = 55.23}

},
vehicles = {
	{ vehicle = "riot", modelo = "Caveirão" },
	{ vehicle = "ranger21grr1", modelo = "Ranger PRF" },
	{ vehicle = "PRFcamaro", modelo = "Camaro PRF" },
	{ vehicle = "WRs10prf", modelo = "S10 PRF" },
	{ vehicle = "PRFtrailblazer", modelo = "Blazer PRF" },
	{ vehicle = "explorerprf", modelo = "Explorer PRF" },
	{ vehicle = "WRr1200prf", modelo = "R1200 PRF" },
	} 
},
[48] = { type = "public", coords = vec3(1273.25,-234.18,98.42),  --CV
vehiclePositions = { 
	[1] = { vec3(1277.3,-235.17,98.05), h = 210.98},

	} 
},
[49] = { type = "public", coords = vec3(-564.97, 305.26, 83.2),  --TEQUILALA
vehiclePositions = { 
	[1] = { vec3(-560.06, 302.18, 82.82), h = 267.61},

	} 
},
[50] = { type = "public", coords = vec3(1389.0, -747.93, 67.2),  --HELIPA
vehiclePositions = { 
	[1] = { vec3(1376.98, -741.14, 66.87), h = 71.76},

	} 
},
[51] = { type = "public", coords = vec3(115.26, -1949.01, 20.66),  --GROOVE
vehiclePositions = { 
	[1] = { vec3(104.13, -1939.75, 20.44), h = 52.25},

	} 
},
[52] = { type = "public", coords = vec3(131.42, -1316.93, 29.21),  --VANILLA
vehiclePositions = { 
	[1] = { vec3(137.3, -1321.3, 29.44), h = 145.28},

	} 
},
[53] = { type = "public", coords = vec3(987.83, -131.63, 74.07),  --MOTOCLUBE
vehiclePositions = { 
	[1] = { vec3(982.88, -134.76, 73.7), h = 329.83},

	} 
},
[54] = { type = "public", coords = vec3(-956.62, -1484.0, 5.17),  --YAKUZA
vehiclePositions = { 
	[1] = { vec3(-963.64, -1484.52, 4.65), h = 111.98},

	} 
},
[55] = { type = "public", coords = vec3(-1405.04, -636.17, 28.68),  --BAHAMAS
vehiclePositions = { 
	[1] = { vec3(-1408.96, -636.5, 28.31), h = 211.68},

	} 
},
[56] = { type = "service", coords = vec3(-1620.93, -1169.64, 1.44), marker = "barco", --PRAIA (iate)
vehiclePositions = { 
	[1] = { vec3(-1631.76, -1170.65, 1.35), h = 131.86},
},
vehicles = {
	{ vehicle = "bananao", modelo = "Bananão" },
	{ vehicle = "jetmax", modelo = "Jetmax" },
	{ vehicle = "seashark", modelo = "Jet Ski" },
	{ vehicle = "dinghy", modelo = "Dinghy" },
	{ vehicle = "squalo", modelo = "Squalo" },
	{ vehicle = "tropic", modelo = "Tropic" },
} 
},
[57] = { type = "public", coords = vec3(-938.81, -2114.18, 9.79),  --ESTACIONAMENTO CIVIL
vehiclePositions = { 
	[1] = { vec3(-937.81, -2106.02, 8.94), h = 45.37},

	} 
},
[58] = { type = "public", coords = vec3(-754.42, -75.48, 41.76),  --METRO
vehiclePositions = { 
	[1] = { vec3(-748.65, -79.17, 41.39), h = 27.58},

	} 
},
[59] = { type = "public", coords = vec3(-375.59, -153.75, 38.26),  --LS
vehiclePositions = { 
	[1] = { vec3(-377.83, -146.85, 38.32), h = 299.12},
	[2] = { vec3(-379.42, -143.91, 38.32), h = 299.98},

	} 
},
[60] = { type = "public", coords = vec3(-219.37,-1953.6,27.76),  --ARENA MAZE BANK
vehiclePositions = { 
	[1] = { vec3(-213.07,-1953.23,27.1), h = 291.3},

	} 
},
[61] = { type = "public", coords = vec3(1112.61,-1509.29,34.84),  --GARAGEM HP (PUBLICA)
vehiclePositions = { 
	[1] = { vec3(1116.0,-1505.9,34.7), h = 269.77},
	[2] = { vec3(1115.76,-1502.54,34.7), h = 269.77},

	} 
},
[62] = { type = "public", coords = vec3(1853.17, 2597.3, 45.68),  --PRISÃO
vehiclePositions = { 
	[1] = { vec3(1854.28, 2592.9, 45.31), h = 267.5},

	} 
},
[63] = { type = "public", coords = vec3(147.93, 6643.1, 31.54),  --NORTE POSTO
vehiclePositions = { 
	[1] = { vec3(150.91, 6637.48, 31.25), h = 137.0},

	} 
},
[64] = { type = "public", coords = vec3(317.39, 2623.25, 44.47),  --NORTE GARAGEM
vehiclePositions = { 
	[1] = { vec3(336.89, 2619.3, 44.13), h = 27.44},

	} 
},
[65] = { type = "public", coords = vec3(-772.96, 5595.55, 33.49),  --NORTE GARAGEM
vehiclePositions = { 
	[1] = { vec3(-771.58, 5578.51, 33.12), h = 90.12},

	} 
},
[66] = { type = "public", coords = vec3(964.4, -1017.53, 40.85),  --GARAGEM EM CIMA DA SR
vehiclePositions = { 
	[1] = { vec3(973.53, -1018.65, 40.65), h = 276.93},

	} 
},
[67] = { type = "public", coords = vec3(1036.38, -763.0, 58.0),  --GARAGEM LAGO
vehiclePositions = { 
	[1] = { vec3(1029.08, -763.65, 57.62), h = 56.17},

	} 
},
[68] = { type = "public", coords = vec3(1156.94, -454.09, 66.99),  --EM FRENTE A BARBEARIA DO CV
vehiclePositions = { 
	[1] = { vec3(1154.99, -462.8, 66.43), h = 165.3},

	} 
},
[69] = { type = "public", coords = vec3(-1955.52, 205.76, 86.52),  --RODOVIA PERTO DA FACULDADE
vehiclePositions = { 
	[1] = { vec3(-1943.8, 203.12, 85.13), h = 295.3},

	} 
},
[70] = { type = "public", coords = vec3(-1928.9, 2037.58, 140.84),  --RODOVIA PERTO DA FACULDADE
vehiclePositions = { 
	[1] = { vec3(-1922.95, 2040.6, 140.37), h = 258.51},

	} 
},
[71] = { type = "public", coords = vec3(1398.36,1115.1,114.84),  --CARTEL
vehiclePositions = { 
	[1] = { vec3(1393.24, 1117.23, 114.47), h = 89.99},

	} 
},
[72] = { type = "service", coords = vec3(-360.32, -149.13, 38.25), perm = "mecanico.permissao", marker = "truck",
vehiclePositions = {
	[1] = { vec3(-364.42, -148.12, 38.44), h = 31.98},
},
vehicles = {
	{ vehicle = "cdaraptor", modelo = "Raptor Mecânica" },
	{ vehicle = "scaniarepair", modelo = "Guincho" },
	} 
},
[73] = { type = "service", coords = vec3(-799.72, -96.03, 37.66), marker = "bicicleta", 
vehiclePositions = {
	[1] = { vec3(-791.37, -91.83, 37.0), h = 210.25}
},
vehicles = {
	{ vehicle = "bmx", modelo = "Bmx" },
	{ vehicle = "scorcher", modelo = "Scorcher" },
	{ vehicle = "tribike", modelo = "Tribike" },
	{ vehicle = "tribike2", modelo = "Tribike 2" },
	{ vehicle = "tribike3", modelo = "Tribike 3" },
	{ vehicle = "cruiser", modelo = "Cruiser" },
} 
},
}


--------------------------------------------------------
------------------ GARAGENS DAS CASAS ------------------
--------------------------------------------------------

config.homeGarages = {
	[1] = { type = 'home', coords = vec3(21.41,548.3,176.02),
	  vehiclePositions = {
		[1] = { vec3(14.98,549.89,175.5), h = 60.7 },
	  },
	  home = 'MS01'
	},
	[2] = { type = 'home', coords = vec3(-813.06,184.23,72.47),
	  vehiclePositions = {
		[1] = { vec3(-821.16,185.31,71.25), h = 119.13 },
	  },
	  home = 'MS02'
	},
	[3] = { type = 'home', coords = vec3(-681.48,901.64,230.57),
	  vehiclePositions = {
		[1] = { vec3(-675.44,903.59,229.73), h = 326.35 },
	  },
	  home = 'MS03'
	},
	[4] = { type = 'home', coords = vec3(-2596.87,1927.04,167.31),
	  vehiclePositions = {
		[1] = { vec3(-2588.73,1929.85,166.46), h = 275.01 },
	  },
	  home = 'MS04'
	},
	[5] = { type = 'home', coords = vec3(-3014.84,740.75,27.58),
	  vehiclePositions = {
		[1] = { vec3(-3019.92,740.24,26.63), h = 103.34 },
	  },
	  home = 'MS05'
	},
	[6] = { type = 'home', coords = vec3(-1890.29,-572.99,11.82),
	  vehiclePositions = {
		[1] = { vec3(-1886.63,-571.43,10.93), h = 319.54 },
	  },
	  home = 'MS09'
	},
	[7] = { type = 'home', coords = vec3(1551.96,2190.1,78.85),
	  vehiclePositions = {
		[1] = { vec3(1554.26,2196.07,78.5), h = 352.11 },
	  },
	  home = 'SS01'
	},
	[8] = { type = 'home', coords = vec3(-2977.14,650.92,25.78),
	  vehiclePositions = {
		[1] = { vec3(-2982.74,654.65,25.015), h = 106.83 },
	  },
	  home = 'MS08'
	},
	[9] = { type = 'home', coords = vec3(1498.49,1195.76,37.96),
	  vehiclePositions = {
		[1] = { vec3(1401.95,1118.01,114.84), h = 355.97 },
	  },
	  home = 'FZ01'
	},
	[10] = { type = 'home', coords = vec3(-1937.07,577.96,119.56),
	  vehiclePositions = {
		[1] = { vec3(-1943.92,583.37,118.79), h = 255.987 },
	  },
	  home = 'LX41'
	},
	[11] = { type = 'home', coords = vec3(-491.13,751.51,162.84),
	  vehiclePositions = {
		[1] = { vec3(-492.05,745.92,162.84), h = 329.81 },
	  },
	  home = 'FH85'
	},
	[12] = { type = 'home', coords = vec3(-877.56,497.95,91.02),
	  vehiclePositions = {
		[1] = { vec3(-872.97,499.76,90.47), h = 106.56 },
	  },
	  home = 'FH02'
	},
	[13] = { type = 'home', coords = vec3(-1005.17,715.55,164.0),
	  vehiclePositions = {
		[1] = { vec3(-1006.29,709.66,162.37), h = 344.07 },
	  },
	  home = 'FH16'
	},
	[14] = { type = 'home', coords = vec3(151.2,568.06,183.98),
	  vehiclePositions = {
		[1] = { vec3(148.7,572.69,183.95), h = 86.85 },
	  },
	  home = 'LX57'
	},
	[15] = { type = 'home', coords = vec3(-864.47,463.46,88.22),
	  vehiclePositions = {
		[1] = { vec3(-861.31,462.66,86.93), h = 276.73 },
	  },
	  home = 'FH01'
	},
	[16] = { type = 'home', coords = vec3(-850.62,522.18,90.62),
	  vehiclePositions = {
		[1] = { vec3(-851.05,514.29,90.15), h = 106.56 },
	  },
	  home = 'FH04'
	},
	[17] = { type = 'home', coords = vec3(-938.56,445.34,80.42),
	  vehiclePositions = {
		[1] = { vec3(-942.71,443.81,79.99), h = 198.88 },
	  },
	  home = 'FH11'
	},
	[18] = { type = 'home', coords = vec3(-1074.27,468.75,77.82),
	  vehiclePositions = {
		[1] = { vec3(-1079.1,465.49,76.79), h = 144.79 },
	  },
	  home = 'FH15'
	},
	[19] = { type = 'home', coords = vec3(-971.31,455.98,79.82),
	  vehiclePositions = {
		[1] = { vec3(-967.03,450.03,78.97), h = 199.58 },
	  },
	  home = 'FH19'
	},
	[20] = { type = 'home', coords = vec3(-736.59,439.85,106.9),
	  vehiclePositions = {
		[1] = { vec3(-736.19,446.59,105.88), h = 3.21 },
	  },
	  home = 'FH23'
	},
	[21] = { type = 'home', coords = vec3(-716.59,500.53,109.27),
	  vehiclePositions = {
		[1] = { vec3(-716.94,495.36,108.43), h = 206.78 },
	  },
	  home = 'FH24'
	},
	[22] = { type = 'home', coords = vec3(-692.91,507.84,110.36),
	  vehiclePositions = {
		[1] = { vec3(-688.85,500.77,109.21), h = 201.51 },
	  },
	  home = 'FH26'
	},
	[23] = { type = 'home', coords = vec3(-574.21,492.54,106.97),
	  vehiclePositions = {
		[1] = { vec3(-573.79,498.15,105.38), h = 9.46 },
	  },
	  home = 'FH29'
	},
	[24] = { type = 'home', coords = vec3(-589.59,531.83,108.17),
	  vehiclePositions = {
		[1] = { vec3(-586.67,526.68,106.72), h = 215.41 },
	  },
	  home = 'FH31'
	},
	[25] = { type = 'home', coords = vec3(-574.01,394.76,100.67),
	  vehiclePositions = {
		[1] = { vec3(-574.73,401.65,99.82), h = 19.61 },
	  },
	  home = 'FH32'
	},
	[26] = { type = 'home', coords = vec3(-447.07,376.54,104.77),
	  vehiclePositions = {
		[1] = { vec3(-456.49,372.48,103.93), h = 358.58 },
	  },
	  home = 'FH45'
	},
	[27] = { type = 'home', coords = vec3(-523.67,525.26,112.44),
	  vehiclePositions = {
		[1] = { vec3(-526.66,530.68,110.95), h = 44.11 },
	  },
	  home = 'FH48'
	},
	[28] = { type = 'home', coords = vec3(-517.36,578.31,120.84),
	  vehiclePositions = {
		[1] = { vec3(-511.63,577.15,119.52), h = 97.85 },
	  },
	  home = 'FH49'
	},
	[29] = { type = 'home', coords = vec3(-470.24,538.11,121.46),
	  vehiclePositions = {
		[1] = { vec3(-468.04,542.62,119.92), h = 355.06 },
	  },
	  home = 'FH52'
	},
	[30] = { type = 'home', coords = vec3(-397.25,512.34,120.19),
	  vehiclePositions = {
		[1] = { vec3(-398.63,518.94,119.68), h = 355.21 },
	  },
	  home = 'FH54'
	},
	[31] = { type = 'home', coords = vec3(-356.43,473.56,112.52),
	  vehiclePositions = {
		[1] = { vec3(-351.33,474.7,111.89), h = 299.59 },
	  },
	  home = 'FH55'
	},
	[32] = { type = 'home', coords = vec3(-357.14,517.38,120.15),
	  vehiclePositions = {
		[1] = { vec3(-362.62,514.72,118.67), h = 134.89 },
	  },
	  home = 'FH58'
	},
	[33] = { type = 'home', coords = vec3(-312.45,483.18,113.46),
	  vehiclePositions = {
		[1] = { vec3(-320.42,480.85,111.44), h = 118.55 },
	  },
	  home = 'FH59'
	},
	[34] = { type = 'home', coords = vec3(-1371.63,451.89,105.34),
	  vehiclePositions = {
		[1] = { vec3(-1376.73,453.26,104.04), h = 80.28 },
	  },
	  home = 'FH68'
	},
	[35] = { type = 'home', coords = vec3(-463.57,676.11,148.54),
	  vehiclePositions = {
		[1] = { vec3(-467.37,673.46,146.8), h = 148.4 },
	  },
	  home = 'FH81'
	},
	[36] = { type = 'home', coords = vec3(-956.88,804.188,177.56),
	  vehiclePositions = {
		[1] = { vec3(-958.62,800.59,176.76), h = 152.94 },
	  },
	  home = 'FH91'
	},
	[37] = { type = 'home', coords = vec3(-921.15,813.8,184.33),
	  vehiclePositions = {
		[1] = { vec3(-920.0,806.38,183.37), h = 189.06 },
	  },
	  home = 'FH92'
	},
	[38] = { type = 'home', coords = vec3(-1004.0,783.99,171.38),
	  vehiclePositions = {
		[1] = { vec3(-997.95,786.76,171.06), h = 293.5 },
	  },
	  home = 'FH93'
	},
	[39] = { type = 'home', coords = vec3(-810.25,803.55,202.18),
	  vehiclePositions = {
		[1] = { vec3(-811.6,809.51,201.24), h = 19.71 },
	  },
	  home = 'FH94'
	},
	[40] = { type = 'home', coords = vec3(-876.54,-57.11,38.05),
	  vehiclePositions = {
		[1] = { vec3(-869.45,-54.25,37.6), h = 281.38 },
	  },
	  home = 'LX01'
	},
	[41] = { type = 'home', coords = vec3(-890.55,-17.35,43.1),
	  vehiclePositions = {
		[1] = { vec3(-885.98,-16.18,42.15), h = 304.12 },
	  },
	  home = 'LX02'
	},
	[42] = { type = 'home', coords = vec3(-872.28,51.35,48.78),
	  vehiclePositions = {
		[1] = { vec3(-875.02,46.86,48.39), h = 195.46 },
	  },
	  home = 'LX03'
	},
	[43] = { type = 'home', coords = vec3(-969.08,107.74,55.66),
	  vehiclePositions = {
		[1] = { vec3(-960.77,109.36,55.49), h = 314.26 },
	  },
	  home = 'LX04'
	},
	[44] = { type = 'home', coords = vec3(-1885.63,629.92,129.99),
	  vehiclePositions = {
		[1] = { vec3(-1890.51,626.0,129.15), h = 136.16 },
	  },
	  home = 'LX05'
	},
	[45] = { type = 'home', coords = vec3(-997.43,142.37,60.66),
	  vehiclePositions = {
		[1] = { vec3(-992.02,144.19,59.81), h = 269.99 },
	  },
	  home = 'LX06'
	},
	[46] = { type = 'home', coords = vec3(-1045.16,224.98,63.76),
	  vehiclePositions = {
		[1] = { vec3(-1048.01,219.47,62.91), h = 184.73 },
	  },
	  home = 'LX07'
	},
	[47] = { type = 'home', coords = vec3(-923.9,212.7,67.46),
	  vehiclePositions = {
		[1] = { vec3(-933.57,210.69,66.61), h = 163.52 },
	  },
	  home = 'LX08'
	},
	[48] = { type = 'home', coords = vec3(-905.04,196.27,69.5),
	  vehiclePositions = {
		[1] = { vec3(-911.78,190.68,68.59), h = 179.92 },
	  },
	  home = 'LX09'
	},
	[49] = { type = 'home', coords = vec3(-915.48,114.68,55.31),
	  vehiclePositions = {
		[1] = { vec3(-920.41,112.49,54.47), h = 84.9 },
	  },
	  home = 'LX10'
	},
	[50] = { type = 'home', coords = vec3(-931.72,13.37,47.91),
	  vehiclePositions = {
		[1] = { vec3(-925.27,9.31,46.87), h = 214.83 },
	  },
	  home = 'LX11'
	},
	[51] = { type = 'home', coords = vec3(-835.07,119.47,55.46),
	  vehiclePositions = {
		[1] = { vec3(-839.12,112.3,54.43), h = 210.36 },
	  },
	  home = 'LX12'
	},
	[52] = { type = 'home', coords = vec3(-1058.75,299.58,66.0),
	  vehiclePositions = {
		[1] = { vec3(-1061.49,305.25,65.13), h = 353.81 },
	  },
	  home = 'LX13'
	},
	[53] = { type = 'home', coords = vec3(-827.87,267.95,86.2),
	  vehiclePositions = {
		[1] = { vec3(-824.72,273.44,85.68), h = 342.78 },
	  },
	  home = 'LX14'
	},
	[54] = { type = 'home', coords = vec3(-869.56,322.71,83.97),
	  vehiclePositions = {
		[1] = { vec3(-870.29,317.83,83.13), h = 186.23 },
	  },
	  home = 'LX15'
	},
	[55] = { type = 'home', coords = vec3(-1026.73,363.75,71.36),
	  vehiclePositions = {
		[1] = { vec3(-1011.08,360.01,70.05), h = 331.43 },
	  },
	  home = 'LX17'
	},
	[56] = { type = 'home', coords = vec3(-1555.85,426.75,109.62),
	  vehiclePositions = {
		[1] = { vec3(-1547.98,426.58,109.09), h = 272.82 },
	  },
	  home = 'LX18'
	},
	[57] = { type = 'home', coords = vec3(-1211.88,274.79,69.51),
	  vehiclePositions = {
		[1] = { vec3(-1204.83,267.12,68.69), h = 284.35 },
	  },
	  home = 'LX19'
	},
	[58] = { type = 'home', coords = vec3(-1101.71,354.46,68.48),
	  vehiclePositions = {
		[1] = { vec3(-1096.63,360.3,67.69), h = 357.45 },
	  },
	  home = 'LX20'
	},
	[59] = { type = 'home', coords = vec3(-1490.24,18.76,54.71),
	  vehiclePositions = {
		[1] = { vec3(-1490.16,23.07,53.88), h = 354.88 },
	  },
	  home = 'LX21'
	},
	[60] = { type = 'home', coords = vec3(-1457.65,-50.22,54.65),
	  vehiclePositions = {
		[1] = { vec3(-1455.68,-55.37,52.6), h = 240.6 },
	  },
	  home = 'LX22'
	},
	[61] = { type = 'home', coords = vec3(-1504.43,19.84,56.4),
	  vehiclePositions = {
		[1] = { vec3(-1503.75,26.86,55.15), h = 8.38 },
	  },
	  home = 'LX23'
	},
	[62] = { type = 'home', coords = vec3(-1581.46,-81.3,54.2),
	  vehiclePositions = {
		[1] = { vec3(-1577.19,-86.02,53.29), h = 270.66 },
	  },
	  home = 'LX24'
	},
	[63] = { type = 'home', coords = vec3(-1585.69,-55.63,56.48),
	  vehiclePositions = {
		[1] = { vec3(-1582.02,-61.06,55.64), h = 270.18 },
	  },
	  home = 'LX25'
	},
	[64] = { type = 'home', coords = vec3(-1558.52,17.86,58.83),
	  vehiclePositions = {
		[1] = { vec3(-1552.69,22.78,57.7), h = 347.5 },
	  },
	  home = 'LX26'
	},
	[65] = { type = 'home', coords = vec3(-1616.73,14.71,62.17),
	  vehiclePositions = {
		[1] = { vec3(-1613.07,20.02,61.32), h = 335.94 },
	  },
	  home = 'LX27'
	},
	[66] = { type = 'home', coords = vec3(-1892.99,120.59,81.64),
	  vehiclePositions = {
		[1] = { vec3(-1887.23,123.26,80.86), h = 338.84 },
	  },
	  home = 'LX28'
	},
	[67] = { type = 'home', coords = vec3(-1940.13,179.1,84.66),
	  vehiclePositions = {
		[1] = { vec3(-1932.93,182.84,83.68), h = 307.83 },
	  },
	  home = 'LX29'
	},
	[68] = { type = 'home', coords = vec3(-2000.65,296.59,91.76),
	  vehiclePositions = {
		[1] = { vec3(-1994.21,290.29,90.85), h = 221.21 },
	  },
	  home = 'LX32'
	},
	[69] = { type = 'home', coords = vec3(-2013.18,453.64,102.67),
	  vehiclePositions = {
		[1] = { vec3(-2006.95,454.86,101.79), h = 276.63 },
	  },
	  home = 'LX34'
	},
	[70] = { type = 'home', coords = vec3(-2016.62,485.7,107.18),
	  vehiclePositions = {
		[1] = { vec3(-2011.39,482.71,106.07), h = 255.38 },
	  },
	  home = 'LX35'
	},
	[71] = { type = 'home', coords = vec3(-1868.36,192.09,84.29),
	  vehiclePositions = {
		[1] = { vec3(-1874.17,194.45,83.77), h = 126.46 },
	  },
	  home = 'LX36'
	},
	[72] = { type = 'home', coords = vec3(-1899.62,241.7,86.26),
	  vehiclePositions = {
		[1] = { vec3(-1904.45,242.14,85.6), h = 27.89 },
	  },
	  home = 'LX37'
	},
	[73] = { type = 'home', coords = vec3(-1918.91,285.25,89.07),
	  vehiclePositions = {
		[1] = { vec3(-1925.28,283.01,88.23), h = 182.84 },
	  },
	  home = 'LX38'
	},
	[74] = { type = 'home', coords = vec3(-1935.69,366.09,93.82),
	  vehiclePositions = {
		[1] = { vec3(-1940.58,360.31,92.55), h = 160.68 },
	  },
	  home = 'LX39'
	},
	[75] = { type = 'home', coords = vec3(-1938.82,386.17,96.5),
	  vehiclePositions = {
		[1] = { vec3(-1943.95,385.19,95.6), h = 96.89 },
	  },
	  home = 'LX40'
	},
	[76] = { type = 'home', coords = vec3(-1937.4,462.55,102.42),
	  vehiclePositions = {
		[1] = { vec3(-1947.37,462.9,101.12), h = 99.05 },
	  },
	  home = 'LX41'
	},
	[77] = { type = 'home', coords = vec3(-1856.34,322.6,88.72),
	  vehiclePositions = {
		[1] = { vec3(-1857.45,328.42,87.8), h = 11.41 },
	  },
	  home = 'LX42'
	},
	[78] = { type = 'home', coords = vec3(-1789.94,345.73,88.55),
	  vehiclePositions = {
		[1] = { vec3(-1790.72,353.87,87.72), h = 64.22 },
	  },
	  home = 'LX43'
	},
	[79] = { type = 'home', coords = vec3(-1745.31,368.33,89.72),
	  vehiclePositions = {
		[1] = { vec3(-1750.77,365.56,88.85), h = 114.91 },
	  },
	  home = 'LX44'
	},
	[80] = { type = 'home', coords = vec3(-1665.21,385.25,89.49),
	  vehiclePositions = {
		[1] = { vec3(-1663.42,391.43,88.39), h = 9.57 },
	  },
	  home = 'LX45'
	},
	[81] = { type = 'home', coords = vec3(-1802.98,615.15,111.77),
	  vehiclePositions = {
		[1] = { vec3(-1802.98,615.15,111.77), h = 98.09 },
	  },
	  home = 'LX46'
	},
	[82] = { type = 'home', coords = vec3(-1991.66,605.61,117.9),
	  vehiclePositions = {
		[1] = { vec3(-1985.63,602.72,117.28), h = 238.48 },
	  },
	  home = 'LX47'
	},
	[83] = { type = 'home', coords = vec3(-1937.7,529.39,110.73),
	  vehiclePositions = {
		[1] = { vec3(-1944.07,521.99,108.31), h = 71.0 },
	  },
	  home = 'LX48'
	},
	[84] = { type = 'home', coords = vec3(-1977.58,624.88,122.53),
	  vehiclePositions = {
		[1] = { vec3(-1971.35,620.69,121.14), h = 246.1 },
	  },
	  home = 'LX50'
	},
	[85] = { type = 'home', coords = vec3(-165.4,919.61,235.65),
	  vehiclePositions = {
		[1] = { vec3(-162.36,926.68,234.8), h = 234.16 },
	  },
	  home = 'LX51'
	},
	[86] = { type = 'home', coords = vec3(-172.67,966.12,237.53),
	  vehiclePositions = {
		[1] = { vec3(-167.03,970.73,235.79), h = 316.56 },
	  },
	  home = 'LX52'
	},
	[87] = { type = 'home', coords = vec3(-124.76,1010.75,235.73),
	  vehiclePositions = {
		[1] = { vec3(-127.89,1001.16,234.88), h = 198.68 },
	  },
	  home = 'LX53'
	},
	[88] = { type = 'home', coords = vec3(-101.17,823.95,235.72),
	  vehiclePositions = {
		[1] = { vec3(-105.63,832.61,234.86), h = 10.25 },
	  },
	  home = 'LX54'
	},
	[89] = { type = 'home', coords = vec3(220.71,755.29,204.85),
	  vehiclePositions = {
		[1] = { vec3(215.84,759.38,203.83), h = 47.56 },
	  },
	  home = 'LX55'
	},
	[90] = { type = 'home', coords = vec3(100.21,563.99,182.94),
	  vehiclePositions = {
		[1] = { vec3(93.13,575.77,182.13), h = 86.85 },
	  },
	  home = 'LX58'
	},
	[91] = { type = 'home', coords = vec3(52.84,559.77,180.21),
	  vehiclePositions = {
		[1] = { vec3(53.19,563.71,179.54), h = 21.7 },
	  },
	  home = 'LX59'
	},
	[92] = { type = 'home', coords = vec3(-143.65,593.14,203.9),
	  vehiclePositions = {
		[1] = { vec3(-142.21,597.23,203.12), h = 358.34 },
	  },
	  home = 'LX60'
	},
	[93] = { type = 'home', coords = vec3(-196.6,621.58,197.91),
	  vehiclePositions = {
		[1] = { vec3(-199.24,615.31,196.21), h = 178.98 },
	  },
	  home = 'LX61'
	},
	[94] = { type = 'home', coords = vec3(-174.92,590.04,197.63),
	  vehiclePositions = {
		[1] = { vec3(-178.23,587.21,197.03), h = 359.63 },
	  },
	  home = 'LX62'
	},
	[95] = { type = 'home', coords = vec3(-224.87,588.93,190.02),
	  vehiclePositions = {
		[1] = { vec3(-221.77,593.25,189.61), h = 331.22 },
	  },
	  home = 'LX63'
	},
	[96] = { type = 'home', coords = vec3(-271.65,599.1,181.68),
	  vehiclePositions = {
		[1] = { vec3(-272.26,603.6,181.15), h = 346.6 },
	  },
	  home = 'LX64'
	},
	[97] = { type = 'home', coords = vec3(-241.91,614.9,187.77),
	  vehiclePositions = {
		[1] = { vec3(-244.12,610.79,186.09), h = 149.22 },
	  },
	  home = 'LX65'
	},
	[98] = { type = 'home', coords = vec3(1290.05,-585.69,71.75),
	  vehiclePositions = {
		[1] = { vec3(1295.49,-567.62,71.49), h = 344.65 },
	  },
	  home = 'LS01'
	},
	[99] = { type = 'home', coords = vec3(1311.03,-593.07,72.93),
	  vehiclePositions = {
		[1] = { vec3(1319.19,-575.18,73.25), h = 336.97 },
	  },
	  home = 'LS02'
	},
	[100] = { type = 'home', coords = vec3(1344.65,-609.86,74.36),
	  vehiclePositions = {
		[1] = { vec3(1348.97,-603.76,74.64), h = 334.73 },
	  },
	  home = 'LS03'
	},
	[101] = { type = 'home', coords = vec3(1359.91,-620.48,74.34),
	  vehiclePositions = {
		[1] = { vec3(1360.55,-601.83,74.62), h = 359.42 },
	  },
	  home = 'LS04'
	},
	[102] = { type = 'home', coords = vec3(1392.87,-607.72,74.35),
	  vehiclePositions = {
		[1] = { vec3(1378.33,-596.21,74.61), h = 52.88 },
	  },
	  home = 'LS05'
	},
	[103] = { type = 'home', coords = vec3(1404.84,-570.68,74.35),
	  vehiclePositions = {
		[1] = { vec3(1387.73,-577.37,74.62), h = 113.2 },
	  },
	  home = 'LS06'
	},
	[104] = { type = 'home', coords = vec3(1366.95,-544.46,74.34),
	  vehiclePositions = {
		[1] = { vec3(1363.05,-551.94,74.62), h = 157.25 },
	  },
	  home = 'LS07'
	},
	[105] = { type = 'home', coords = vec3(1360.66,-536.8,73.78),
	  vehiclePositions = {
		[1] = { vec3(1352.89,-553.3,74.31), h = 156.76 },
	  },
	  home = 'LS08'
	},
	[106] = { type = 'home', coords = vec3(1322.0,-524.9,72.13),
	  vehiclePositions = {
		[1] = { vec3(1318.24,-532.96,72.35), h = 160.86 },
	  },
	  home = 'LS09'
	},
	[107] = { type = 'home', coords = vec3(1314.79,-516.59,71.41),
	  vehiclePositions = {
		[1] = { vec3(1307.96,-533.58,71.56), h = 160.38 },
	  },
	  home = 'LS10'
	},
	[108] = { type = 'home', coords = vec3(1245.08,-518.7,69.0),
	  vehiclePositions = {
		[1] = { vec3(1247.17,-522.7,69.25), h = 257.36 },
	  },
	  home = 'LS11'
	},
	[109] = { type = 'home', coords = vec3(1251.25,-490.29,69.5),
	  vehiclePositions = {
		[1] = { vec3(1260.63,-494.22,69.59), h = 255.66 },
	  },
	  home = 'LS12'
	},
	[110] = { type = 'home', coords = vec3(1259.55,-477.81,70.19),
	  vehiclePositions = {
		[1] = { vec3(1280.06,-472.81,69.24), h = 170.02 },
	  },
	  home = 'LS13'
	},
	[111] = { type = 'home', coords = vec3(1268.56,-461.81,69.84),
	  vehiclePositions = {
		[1] = { vec3(1270.98,-463.9,69.87), h = 328.18 },
	  },
	  home = 'LS14'
	},
	[112] = { type = 'home', coords = vec3(1261.12,-426.7,69.81),
	  vehiclePositions = {
		[1] = { vec3(1261.45,-419.35,69.58), h = 297.04 },
	  },
	  home = 'LS15'
	},
	[113] = { type = 'home', coords = vec3(1234.75,-578.25,69.49),
	  vehiclePositions = {
		[1] = { vec3(1243.86,-579.36,69.64), h = 271.53 },
	  },
	  home = 'LS16'
	},
	[114] = { type = 'home', coords = vec3(1236.79,-589.55,69.79),
	  vehiclePositions = {
		[1] = { vec3(1242.92,-586.85,69.55), h = 269.57 },
	  },
	  home = 'LS17'
	},
	[115] = { type = 'home', coords = vec3(1250.47,-626.17,69.35),
	  vehiclePositions = {
		[1] = { vec3(1259.06,-624.91,69.58), h = 296.96 },
	  },
	  home = 'LS18'
	},
	[116] = { type = 'home', coords = vec3(1257.67,-660.38,67.93),
	  vehiclePositions = {
		[1] = { vec3(1271.84,-659.12,68.0), h = 293.69 },
	  },
	  home = 'LS19'
	},
	[117] = { type = 'home', coords = vec3(1267.25,-673.65,65.75),
	  vehiclePositions = {
		[1] = { vec3(1276.75,-673.42,66.25), h = 277.48 },
	  },
	  home = 'LS20'
	},
	[118] = { type = 'home', coords = vec3(1259.79,-711.08,64.72),
	  vehiclePositions = {
		[1] = { vec3(1263.72,-716.66,64.75), h = 239.07 },
	  },
	  home = 'LS21'
	},
	[119] = { type = 'home', coords = vec3(1225.19,-723.04,60.64),
	  vehiclePositions = {
		[1] = { vec3(1223.46,-730.21,60.4), h = 163.48 },
	  },
	  home = 'LS22'
	},
	[120] = { type = 'home', coords = vec3(1228.5,-703.47,60.68),
	  vehiclePositions = {
		[1] = { vec3(1217.85,-704.09,60.7), h = 97.24 },
	  },
	  home = 'LS23'
	},
	[121] = { type = 'home', coords = vec3(1220.91,-664.18,63.13),
	  vehiclePositions = {
		[1] = { vec3(1214.36,-665.12,62.85), h = 103.07 },
	  },
	  home = 'LS24'
	},
	[122] = { type = 'home', coords = vec3(1206.75,-614.0,66.12),
	  vehiclePositions = {
		[1] = { vec3(1199.98,-612.47,65.36), h = 94.4 },
	  },
	  home = 'LS25'
	},
	[123] = { type = 'home', coords = vec3(1192.48,-597.08,64.01),
	  vehiclePositions = {
		[1] = { vec3(1188.28,-595.06,64.23), h = 34.45 },
	  },
	  home = 'LS26'
	},
	[124] = { type = 'home', coords = vec3(1189.79,-573.78,64.32),
	  vehiclePositions = {
		[1] = { vec3(1185.82,-569.96,64.56), h = 25.68 },
	  },
	  home = 'LS27'
	},
	[125] = { type = 'home', coords = vec3(1191.61,-554.97,64.71),
	  vehiclePositions = {
		[1] = { vec3(1187.47,-550.38,64.83), h = 86.85 },
	  },
	  home = 'LS28'
	},
	[126] = { type = 'home', coords = vec3(1089.59,-495.42,65.07),
	  vehiclePositions = {
		[1] = { vec3(1084.78,-493.34,64.4), h = 79.01 },
	  },
	  home = 'LS29'
	},
	[127] = { type = 'home', coords = vec3(1101.7,-468.42,67.06),
	  vehiclePositions = {
		[1] = { vec3(1091.28,-470.87,65.47), h = 77.7 },
	  },
	  home = 'LS30'
	},
	[128] = { type = 'home', coords = vec3(1111.03,-417.0,67.16),
	  vehiclePositions = {
		[1] = { vec3(1111.15,-419.57,67.43), h = 83.31 },
	  },
	  home = 'LS31'
	},
	[129] = { type = 'home', coords = vec3(1112.77,-394.29,68.74),
	  vehiclePositions = {
		[1] = { vec3(1106.07,-399.24,68.2), h = 78.01 },
	  },
	  home = 'LS32'
	},
	[130] = { type = 'home', coords = vec3(1057.42,-384.09,67.86),
	  vehiclePositions = {
		[1] = { vec3(1056.9,-388.45,68.09), h = 221.13 },
	  },
	  home = 'LS33'
	},
	[131] = { type = 'home', coords = vec3(1021.13,-414.33,65.95),
	  vehiclePositions = {
		[1] = { vec3(1022.37,-419.52,66.05), h = 219.15 },
	  },
	  home = 'LS34'
	},
	[132] = { type = 'home', coords = vec3(1009.82,-418.88,64.96),
	  vehiclePositions = {
		[1] = { vec3(1015.92,-423.87,65.32), h = 217.1 },
	  },
	  home = 'LS35'
	},
	[133] = { type = 'home', coords = vec3(987.71,-438.07,63.75),
	  vehiclePositions = {
		[1] = { vec3(995.76,-435.43,64.23), h = 271.01 },
	  },
	  home = 'LS36'
	},
	[134] = { type = 'home', coords = vec3(971.53,-447.94,62.41),
	  vehiclePositions = {
		[1] = { vec3(975.54,-454.41,62.86), h = 213.74 },
	  },
	  home = 'LS37'
	},
	[135] = { type = 'home', coords = vec3(939.3,-463.22,61.26),
	  vehiclePositions = {
		[1] = { vec3(942.05,-469.79,61.53), h = 212.33 },
	  },
	  home = 'LS38'
	},
	[136] = { type = 'home', coords = vec3(928.77,-475.65,60.7),
	  vehiclePositions = {
		[1] = { vec3(933.31,-480.49,60.88), h = 203.27 },
	  },
	  home = 'LS39'
	},
	[137] = { type = 'home', coords = vec3(909.42,-489.73,59.02),
	  vehiclePositions = {
		[1] = { vec3(914.46,-490.17,59.29), h = 204.27 },
	  },
	  home = 'LS40'
	},
	[138] = { type = 'home', coords = vec3(873.98,-503.77,57.5),
	  vehiclePositions = {
		[1] = { vec3(874.77,-507.45,57.72), h = 226.29 },
	  },
	  home = 'LS41'
	},
	[139] = { type = 'home', coords = vec3(854.95,-516.17,57.33),
	  vehiclePositions = {
		[1] = { vec3(858.81,-522.39,57.59), h = 227.66 },
	  },
	  home = 'LS42'
	},
	[140] = { type = 'home', coords = vec3(848.57,-540.12,57.33),
	  vehiclePositions = {
		[1] = { vec3(853.51,-542.76,57.6), h = 266.06 },
	  },
	  home = 'LS43'
	},
	[141] = { type = 'home', coords = vec3(842.1,-567.41,57.71),
	  vehiclePositions = {
		[1] = { vec3(849.29,-567.47,57.99), h = 279.71 },
	  },
	  home = 'LS44'
	},
	[142] = { type = 'home', coords = vec3(868.47,-594.02,58.3),
	  vehiclePositions = {
		[1] = { vec3(872.86,-590.11,58.28), h = 317.23 },
	  },
	  home = 'LS45'
	},
	[143] = { type = 'home', coords = vec3(875.58,-602.34,58.45),
	  vehiclePositions = {
		[1] = { vec3(875.55,-598.36,58.45), h = 316.61 },
	  },
	  home = 'LS46'
	},
	[144] = { type = 'home', coords = vec3(912.15,-631.81,58.05),
	  vehiclePositions = {
		[1] = { vec3(917.67,-627.46,58.32), h = 319.36 },
	  },
	  home = 'LS47'
	},
	[145] = { type = 'home', coords = vec3(913.03,-645.12,57.87),
	  vehiclePositions = {
		[1] = { vec3(917.96,-639.77,58.14), h = 318.18 },
	  },
	  home = 'LS48'
	},
	[146] = { type = 'home', coords = vec3(946.14,-657.5,58.02),
	  vehiclePositions = {
		[1] = { vec3(951.67,-654.13,58.16), h = 309.34 },
	  },
	  home = 'LS49'
	},
	[147] = { type = 'home', coords = vec3(940.18,-672.19,58.02),
	  vehiclePositions = {
		[1] = { vec3(946.99,-669.22,58.29), h = 297.96 },
	  },
	  home = 'LS50'
	},
	[148] = { type = 'home', coords = vec3(969.7,-688.32,57.95),
	  vehiclePositions = {
		[1] = { vec3(973.59,-685.58,57.91), h = 309.99 },
	  },
	  home = 'LS51'
	},
	[149] = { type = 'home', coords = vec3(976.24,-713.97,57.87),
	  vehiclePositions = {
		[1] = { vec3(982.5,-709.42,57.88), h = 312.02 },
	  },
	  home = 'LS52'
	},
	[150] = { type = 'home', coords = vec3(1004.32,-734.1,57.46),
	  vehiclePositions = {
		[1] = { vec3(1008.02,-731.13,57.88), h = 311.05 },
	  },
	  home = 'LS53'
	},
	[151] = { type = 'home', coords = vec3(981.21,-614.8,58.84),
	  vehiclePositions = {
		[1] = { vec3(973.52,-619.61,59.1), h = 128.1 },
	  },
	  home = 'LS54'
	},
	[152] = { type = 'home', coords = vec3(959.79,-601.7,59.5),
	  vehiclePositions = {
		[1] = { vec3(955.45,-598.08,59.65), h = 27.96 },
	  },
	  home = 'LS55'
	},
	[153] = { type = 'home', coords = vec3(984.25,-579.14,59.28),
	  vehiclePositions = {
		[1] = { vec3(982.93,-572.6,59.53), h = 31.32 },
	  },
	  home = 'LS56'
	},
	[154] = { type = 'home', coords = vec3(1008.54,-565.15,60.2),
	  vehiclePositions = {
		[1] = { vec3(1012.51,-563.56,60.44), h = 263.72 },
	  },
	  home = 'LS57'
	},
	[155] = { type = 'home', coords = vec3(943.81,-243.89,68.63),
	  vehiclePositions = {
		[1] = { vec3(939.22,-250.12,68.69), h = 150.37 },
	  },
	  home = 'LS58'
	},
	[156] = { type = 'home', coords = vec3(1003.79,-588.12,59.14),
	  vehiclePositions = {
		[1] = { vec3(1009.07,-590.25,59.2), h = 258.95 },
	  },
	  home = 'LS59'
	},
	[157] = { type = 'home', coords = vec3(922.71,-564.06,57.97),
	  vehiclePositions = {
		[1] = { vec3(926.46,-567.39,58.24), h = 206.14 },
	  },
	  home = 'LS60'
	},
	[158] = { type = 'home', coords = vec3(956.87,-546.73,59.53),
	  vehiclePositions = {
		[1] = { vec3(957.91,-552.49,59.55), h = 211.12 },
	  },
	  home = 'LS61'
	},
	[159] = { type = 'home', coords = vec3(981.96,-530.0,60.12),
	  vehiclePositions = {
		[1] = { vec3(983.27,-536.41,60.19), h = 211.11 },
	  },
	  home = 'LS62'
	},
	[160] = { type = 'home', coords = vec3(1001.36,-510.47,60.7),
	  vehiclePositions = {
		[1] = { vec3(1003.89,-518.48,60.98), h = 205.24 },
	  },
	  home = 'LS63'
	},
	[161] = { type = 'home', coords = vec3(1045.95,-495.92,64.08),
	  vehiclePositions = {
		[1] = { vec3(1049.91,-488.79,64.19), h = 257.03 },
	  },
	  home = 'LS64'
	},
	[162] = { type = 'home', coords = vec3(1049.12,-479.89,64.1),
	  vehiclePositions = {
		[1] = { vec3(1056.64,-483.32,64.11), h = 257.85 },
	  },
	  home = 'LS65'
	},
	[163] = { type = 'home', coords = vec3(1055.36,-445.56,65.97),
	  vehiclePositions = {
		[1] = { vec3(1062.56,-445.67,66.16), h = 257.58 },
	  },
	  home = 'LS66'
	},
	[164] = { type = 'home', coords = vec3(1020.06,-464.4,63.9),
	  vehiclePositions = {
		[1] = { vec3(1019.04,-459.29,64.37), h = 38.05 },
	  },
	  home = 'LS67'
	},
	[165] = { type = 'home', coords = vec3(966.19,-505.37,61.74),
	  vehiclePositions = {
		[1] = { vec3(960.86,-500.52,61.65), h = 29.8 },
	  },
	  home = 'LS68'
	},
	[166] = { type = 'home', coords = vec3(950.42,-516.97,60.25),
	  vehiclePositions = {
		[1] = { vec3(948.5,-511.66,60.5), h = 29.22 },
	  },
	  home = 'LS69'
	},
	[167] = { type = 'home', coords = vec3(921.11,-527.47,59.58),
	  vehiclePositions = {
		[1] = { vec3(915.83,-522.63,59.03), h = 25.35 },
	  },
	  home = 'LS70'
	},
	[168] = { type = 'home', coords = vec3(893.88,-547.44,58.17),
	  vehiclePositions = {
		[1] = { vec3(888.36,-551.92,58.24), h = 115.0 },
	  },
	  home = 'LS71'
	},
	[169] = { type = 'home', coords = vec3(1103.28,-429.62,67.4),
	  vehiclePositions = {
		[1] = { vec3(1097.86,-428.24,66.68), h = 80.97 },
	  },
	  home = 'LS72'
	},
	[170] = { type = 'home', coords = vec3(102.82,-1959.78,20.84),
	  vehiclePositions = {
		[1] = { vec3(104.57,-1954.94,20.95), h = 355.58 },
	  },
	  home = 'KR01'
	},
	[171] = { type = 'home', coords = vec3(72.16,-1935.47,20.99),
	  vehiclePositions = {
		[1] = { vec3(81.72,-1932.41,21.02), h = 316.63 },
	  },
	  home = 'KR02'
	},
	[172] = { type = 'home', coords = vec3(14.13,-1886.93,23.24),
	  vehiclePositions = {
		[1] = { vec3(18.48,-1880.11,23.28), h = 320.5 },
	  },
	  home = 'KR03'
	},
	[173] = { type = 'home', coords = vec3(98.75,-1907.55,21.07),
	  vehiclePositions = {
		[1] = { vec3(89.81,-1917.18,20.98), h = 140.59 },
	  },
	  home = 'KR04'
	},
	[174] = { type = 'home', coords = vec3(101.95,-1883.62,24.02),
	  vehiclePositions = {
		[1] = { vec3(105.76,-1879.36,24.22), h = 319.71 },
	  },
	  home = 'KR05'
	},
	[175] = { type = 'home', coords = vec3(157.6,-1901.16,23.0),
	  vehiclePositions = {
		[1] = { vec3(162.82,-1899.28,23.26), h = 334.81 },
	  },
	  home = 'KR06'
	},
	[176] = { type = 'home', coords = vec3(163.9,-1954.67,19.32),
	  vehiclePositions = {
		[1] = { vec3(165.73,-1959.08,19.43), h = 227.78 },
	  },
	  home = 'KR07'
	},
	[177] = { type = 'home', coords = vec3(152.53,-1960.61,19.08),
	  vehiclePositions = {
		[1] = { vec3(152.79,-1965.88,19.04), h = 228.5 },
	  },
	  home = 'KR08'
	},
	[178] = { type = 'home', coords = vec3(58.69,-1878.41,22.39),
	  vehiclePositions = {
		[1] = { vec3(52.14,-1878.42,22.53), h = 136.83 },
	  },
	  home = 'KR09'
	},
	[179] = { type = 'home', coords = vec3(45.4,-1849.13,22.84),
	  vehiclePositions = {
		[1] = { vec3(41.44,-1853.34,23.11), h = 135.2 },
	  },
	  home = 'KR10'
	},
	[180] = { type = 'home', coords = vec3(-45.22,-1791.79,27.45),
	  vehiclePositions = {
		[1] = { vec3(-53.0,-1801.42,27.36), h = 50.04 },
	  },
	  home = 'KR11'
	},
	[181] = { type = 'home', coords = vec3(-54.09,-1781.86,27.88),
	  vehiclePositions = {
		[1] = { vec3(-57.67,-1785.85,28.12), h = 136.73 },
	  },
	  home = 'KR12'
	},
	[182] = { type = 'home', coords = vec3(140.35,-1866.11,24.32),
	  vehiclePositions = {
		[1] = { vec3(136.94,-1869.3,24.4), h = 155.02 },
	  },
	  home = 'KR13'
	},
	[183] = { type = 'home', coords = vec3(189.37,-1872.27,24.73),
	  vehiclePositions = {
		[1] = { vec3(186.58,-1877.13,24.85), h = 154.49 },
	  },
	  home = 'KR14'
	},
	[184] = { type = 'home', coords = vec3(248.21,-1732.71,29.38),
	  vehiclePositions = {
		[1] = { vec3(244.51,-1728.83,29.5), h = 49.0 },
	  },
	  home = 'KR15'
	},
	[185] = { type = 'home', coords = vec3(272.34,-1704.01,29.31),
	  vehiclePositions = {
		[1] = { vec3(268.09,-1700.73,29.57), h = 49.31 },
	  },
	  home = 'KR16'
	},
	[186] = { type = 'home', coords = vec3(291.46,-1783.92,28.26),
	  vehiclePositions = {
		[1] = { vec3(297.45,-1791.53,28.19), h = 228.58 },
	  },
	  home = 'KR17'
	},
	[187] = { type = 'home', coords = vec3(319.33,-1769.51,29.08),
	  vehiclePositions = {
		[1] = { vec3(321.52,-1773.31,28.93), h = 229.23 },
	  },
	  home = 'KR18'
	},
	[188] = { type = 'home', coords = vec3(142.93,-1832.74,27.07),
	  vehiclePositions = {
		[1] = { vec3(138.97,-1830.69,27.29), h = 49.32 },
	  },
	  home = 'KR19'
	},
	[189] = { type = 'home', coords = vec3(83.64,-1973.9,20.93),
	  vehiclePositions = {
		[1] = { vec3(87.72,-1968.8,21.03), h = 319.25 },
	  },
	  home = 'KR20'
	},
	[190] = { type = 'home', coords = vec3(80.39,-1949.55,20.8),
	  vehiclePositions = {
		[1] = { vec3(89.19,-1934.65,20.91), h = 217.76 },
	  },
	  home = 'KR21'
	},
	[191] = { type = 'home', coords = vec3(54.53,-1921.05,21.66),
	  vehiclePositions = {
		[1] = { vec3(62.29,-1910.55,21.78), h = 230.76 },
	  },
	  home = 'KR22'
	},
	[192] = { type = 'home', coords = vec3(37.3,-1926.34,21.8),
	  vehiclePositions = {
		[1] = { vec3(42.47,-1920.65,21.94), h = 320.78 },
	  },
	  home = 'KR23'
	},
	[193] = { type = 'home', coords = vec3(-10.49,-1883.78,24.15),
	  vehiclePositions = {
		[1] = { vec3(0.4,-1878.23,23.07), h = 319.84 },
	  },
	  home = 'KR24'
	},
	[194] = { type = 'home', coords = vec3(7.46,-1884.39,23.32),
	  vehiclePositions = {
		[1] = { vec3(15.62,-1871.47,23.56), h = 228.24 },
	  },
	  home = 'KR25'
	},
	[195] = { type = 'home', coords = vec3(-23.09,-1857.7,25.04),
	  vehiclePositions = {
		[1] = { vec3(-22.28,-1852.32,25.35), h = 318.16 },
	  },
	  home = 'KR26'
	},
	[196] = { type = 'home', coords = vec3(-33.91,-1855.64,26.01),
	  vehiclePositions = {
		[1] = { vec3(-36.14,-1861.29,26.03), h = 318.25 },
	  },
	  home = 'KR27'
	},
	[197] = { type = 'home', coords = vec3(123.49,-1927.1,21.01),
	  vehiclePositions = {
		[1] = { vec3(118.66,-1940.02,20.95), h = 86.06 },
	  },
	  home = 'KR28'
	},
	[198] = { type = 'home', coords = vec3(116.48,-1918.75,20.94),
	  vehiclePositions = {
		[1] = { vec3(109.49,-1924.84,21.03), h = 159.44 },
	  },
	  home = 'KR29'
	},
	[199] = { type = 'home', coords = vec3(112.4,-1884.8,23.59),
	  vehiclePositions = {
		[1] = { vec3(125.42,-1877.96,23.98), h = 245.04 },
	  },
	  home = 'KR30'
	},
	[200] = { type = 'home', coords = vec3(163.74,-1922.7,21.2),
	  vehiclePositions = {
		[1] = { vec3(166.25,-1929.66,21.29), h = 230.07 },
	  },
	  home = 'KR31'
	},
	[201] = { type = 'home', coords = vec3(142.93,-1970.81,18.86),
	  vehiclePositions = {
		[1] = { vec3(153.95,-1978.59,18.55), h = 139.63 },
	  },
	  home = 'KR32'
	},
	[202] = { type = 'home', coords = vec3(28.49,-1852.1,23.68),
	  vehiclePositions = {
		[1] = { vec3(20.42,-1863.32,23.63), h = 50.07 },
	  },
	  home = 'KR33'
	},
	[203] = { type = 'home', coords = vec3(11.84,-1843.19,24.53),
	  vehiclePositions = {
		[1] = { vec3(8.43,-1845.9,24.64), h = 139.44 },
	  },
	  home = 'KR34'
	},
	[204] = { type = 'home', coords = vec3(167.84,-1854.07,24.29),
	  vehiclePositions = {
		[1] = { vec3(165.62,-1861.16,24.41), h = 155.81 },
	  },
	  home = 'KR35'
	},
	[205] = { type = 'home', coords = vec3(206.99,-1892.89,24.43),
	  vehiclePositions = {
		[1] = { vec3(198.9,-1897.55,24.5), h = 142.92 },
	  },
	  home = 'KR36'
	},
	[206] = { type = 'home', coords = vec3(302.56,-1777.35,29.1),
	  vehiclePositions = {
		[1] = { vec3(312.42,-1785.76,28.42), h = 229.27 },
	  },
	  home = 'KR37'
	},
	[207] = { type = 'home', coords = vec3(289.96,-1789.91,27.7),
	  vehiclePositions = {
		[1] = { vec3(297.45,-1791.53,28.19), h = 228.58 },
	  },
	  home = 'KR38'
	},
	[208] = { type = 'home', coords = vec3(311.04,-1735.44,29.54),
	  vehiclePositions = {
		[1] = { vec3(315.43,-1739.08,29.73), h = 231.04 },
	  },
	  home = 'KR39'
	},
	[209] = { type = 'home', coords = vec3(269.11,-1728.64,29.65),
	  vehiclePositions = {
		[1] = { vec3(264.26,-1718.68,29.56), h = 49.25 },
	  },
	  home = 'KR40'
	},
	[210] = { type = 'home', coords = vec3(269.79,-1710.52,29.34),
	  vehiclePositions = {
		[1] = { vec3(257.55,-1701.71,29.31), h = 320.02 },
	  },
	  home = 'KR41'
	},
	[211] = { type = 'home', coords = vec3(248.94,-1936.94,24.35),
	  vehiclePositions = {
		[1] = { vec3(240.16,-1927.99,24.39), h = 319.7 },
	  },
	  home = 'LV01'
	},
	[212] = { type = 'home', coords = vec3(269.8,-1932.86,25.44),
	  vehiclePositions = {
		[1] = { vec3(263.07,-1921.28,25.41), h = 54.74 },
	  },
	  home = 'LV02'
	},
	[213] = { type = 'home', coords = vec3(270.61,-1914.8,25.81),
	  vehiclePositions = {
		[1] = { vec3(270.12,-1905.53,26.78), h = 51.02 },
	  },
	  home = 'LV03'
	},
	[214] = { type = 'home', coords = vec3(279.17,-1899.45,26.89),
	  vehiclePositions = {
		[1] = { vec3(269.73,-1892.82,26.83), h = 319.63 },
	  },
	  home = 'LV04'
	},
	[215] = { type = 'home', coords = vec3(318.07,-1856.29,27.11),
	  vehiclePositions = {
		[1] = { vec3(305.2,-1850.27,27.0), h = 320.21 },
	  },
	  home = 'LV05'
	},
	[216] = { type = 'home', coords = vec3(340.81,-1849.98,27.77),
	  vehiclePositions = {
		[1] = { vec3(335.81,-1835.98,27.61), h = 44.87 },
	  },
	  home = 'LV06'
	},
	[217] = { type = 'home', coords = vec3(344.21,-1828.31,27.95),
	  vehiclePositions = {
		[1] = { vec3(333.16,-1817.23,27.99), h = 320.18 },
	  },
	  home = 'LV07'
	},
	[218] = { type = 'home', coords = vec3(350.15,-1811.51,28.8),
	  vehiclePositions = {
		[1] = { vec3(342.37,-1806.23,28.48), h = 319.97 },
	  },
	  home = 'LV08'
	},
	[219] = { type = 'home', coords = vec3(404.54,-1753.91,29.37),
	  vehiclePositions = {
		[1] = { vec3(403.61,-1739.39,29.54), h = 46.7 },
	  },
	  home = 'LV09'
	},
	[220] = { type = 'home', coords = vec3(430.66,-1741.22,29.61),
	  vehiclePositions = {
		[1] = { vec3(431.33,-1735.54,28.65), h = 50.2 },
	  },
	  home = 'LV10'
	},
	[221] = { type = 'home', coords = vec3(434.96,-1715.43,29.33),
	  vehiclePositions = {
		[1] = { vec3(430.06,-1715.87,28.69), h = 49.34 },
	  },
	  home = 'LV11'
	},
	[222] = { type = 'home', coords = vec3(442.86,-1698.41,29.38),
	  vehiclePositions = {
		[1] = { vec3(442.78,-1693.12,28.66), h = 51.33 },
	  },
	  home = 'LV12'
	},
	[223] = { type = 'home', coords = vec3(498.38,-1698.89,29.41),
	  vehiclePositions = {
		[1] = { vec3(498.01,-1702.77,29.64), h = 236.28 },
	  },
	  home = 'LV13'
	},
	[224] = { type = 'home', coords = vec3(479.02,-1718.03,29.37),
	  vehiclePositions = {
		[1] = { vec3(490.02,-1721.93,29.62), h = 251.19 },
	  },
	  home = 'LV14'
	},
	[225] = { type = 'home', coords = vec3(464.62,-1740.78,29.11),
	  vehiclePositions = {
		[1] = { vec3(473.8,-1744.08,29.21), h = 250.4 },
	  },
	  home = 'LV15'
	},
	[226] = { type = 'home', coords = vec3(475.52,-1755.13,28.76),
	  vehiclePositions = {
		[1] = { vec3(488.5,-1757.75,28.71), h = 163.16 },
	  },
	  home = 'LV16'
	},
	[227] = { type = 'home', coords = vec3(475.02,-1772.84,28.7),
	  vehiclePositions = {
		[1] = { vec3(478.21,-1779.06,28.93), h = 270.19 },
	  },
	  home = 'LV17'
	},
	[228] = { type = 'home', coords = vec3(511.46,-1778.19,28.51),
	  vehiclePositions = {
		[1] = { vec3(499.79,-1777.14,28.64), h = 201.67 },
	  },
	  home = 'LV18'
	},
	[229] = { type = 'home', coords = vec3(504.82,-1799.04,28.49),
	  vehiclePositions = {
		[1] = { vec3(500.19,-1792.86,28.65), h = 161.09 },
	  },
	  home = 'LV19'
	},
	[230] = { type = 'home', coords = vec3(504.77,-1808.65,28.51),
	  vehiclePositions = {
		[1] = { vec3(491.87,-1805.02,28.65), h = 138.92 },
	  },
	  home = 'LV20'
	},
	[231] = { type = 'home', coords = vec3(487.7,-1826.73,28.53),
	  vehiclePositions = {
		[1] = { vec3(479.28,-1819.72,28.1), h = 139.7 },
	  },
	  home = 'LV21'
	},
	[232] = { type = 'home', coords = vec3(431.96,-1828.9,28.18),
	  vehiclePositions = {
		[1] = { vec3(437.06,-1837.91,28.21), h = 223.26 },
	  },
	  home = 'LV22'
	},
	[233] = { type = 'home', coords = vec3(428.72,-1839.65,28.08),
	  vehiclePositions = {
		[1] = { vec3(434.57,-1841.14,28.23), h = 222.18 },
	  },
	  home = 'LV23'
	},
	[234] = { type = 'home', coords = vec3(401.5,-1849.32,27.32),
	  vehiclePositions = {
		[1] = { vec3(394.61,-1849.77,26.41), h = 225.55 },
	  },
	  home = 'LV24'
	},
	[235] = { type = 'home', coords = vec3(396.69,-1872.65,26.25),
	  vehiclePositions = {
		[1] = { vec3(397.28,-1877.44,26.35), h = 222.91 },
	  },
	  home = 'LV25'
	},
	[236] = { type = 'home', coords = vec3(385.03,-1890.77,25.32),
	  vehiclePositions = {
		[1] = { vec3(384.63,-1896.36,25.21), h = 222.83 },
	  },
	  home = 'LV26'
	},
	[237] = { type = 'home', coords = vec3(360.06,-1894.9,24.99),
	  vehiclePositions = {
		[1] = { vec3(357.8,-1896.77,25.08), h = 227.0 },
	  },
	  home = 'LV27'
	},
	[238] = { type = 'home', coords = vec3(315.73,-1937.5,24.82),
	  vehiclePositions = {
		[1] = { vec3(315.5,-1942.05,24.92), h = 230.52 },
	  },
	  home = 'LV28'
	},
	[239] = { type = 'home', coords = vec3(310.66,-1965.91,23.74),
	  vehiclePositions = {
		[1] = { vec3(316.82,-1970.62,23.69), h = 138.57 },
	  },
	  home = 'LV29'
	},
	[240] = { type = 'home', coords = vec3(299.42,-1971.96,22.49),
	  vehiclePositions = {
		[1] = { vec3(306.82,-1982.39,22.39), h = 139.63 },
	  },
	  home = 'LV30'
	},
	[241] = { type = 'home', coords = vec3(282.89,-1980.29,21.4),
	  vehiclePositions = {
		[1] = { vec3(285.64,-1985.85,21.41), h = 229.16 },
	  },
	  home = 'LV31'
	},
	[242] = { type = 'home', coords = vec3(280.83,-1991.24,20.46),
	  vehiclePositions = {
		[1] = { vec3(286.37,-1992.54,20.81), h = 228.61 },
	  },
	  home = 'LV32'
	},
	[243] = { type = 'home', coords = vec3(256.42,-2026.71,18.86),
	  vehiclePositions = {
		[1] = { vec3(267.58,-2029.38,18.82), h = 142.23 },
	  },
	  home = 'LV33'
	},
	[244] = { type = 'home', coords = vec3(240.68,-2021.42,18.71),
	  vehiclePositions = {
		[1] = { vec3(246.74,-2035.94,18.53), h = 228.9 },
	  },
	  home = 'LV34'
	},
	[245] = { type = 'home', coords = vec3(241.9,-2042.78,18.02),
	  vehiclePositions = {
		[1] = { vec3(245.74,-2053.88,18.1), h = 134.18 },
	  },
	  home = 'LV35'
	},
	[246] = { type = 'home', coords = vec3(-442.95,6202.62,29.56),
	  vehiclePositions = {
		[1] = { vec3(-435.4,6206.42,29.57), h = 278.13 },
	  },
	  home = 'PB01'
	},
	[247] = { type = 'home', coords = vec3(-375.5,6187.37,31.54),
	  vehiclePositions = {
		[1] = { vec3(-379.5,6184.85,31.4), h = 223.82 },
	  },
	  home = 'PB02'
	},
	[248] = { type = 'home', coords = vec3(-361.91,6204.76,31.58),
	  vehiclePositions = {
		[1] = { vec3(-367.92,6200.05,31.4), h = 224.98 },
	  },
	  home = 'PB03'
	},
	[249] = { type = 'home', coords = vec3(-359.1,6227.29,31.5),
	  vehiclePositions = {
		[1] = { vec3(-349.5,6217.17,31.4), h = 223.88 },
	  },
	  home = 'PB04'
	},
	[250] = { type = 'home', coords = vec3(-381.48,6254.9,31.49),
	  vehiclePositions = {
		[1] = { vec3(-388.73,6273.42,30.02), h = 50.83 },
	  },
	  home = 'PB05'
	},
	[251] = { type = 'home', coords = vec3(-360.84,6265.04,31.53),
	  vehiclePositions = {
		[1] = { vec3(-352.17,6265.07,31.32), h = 46.14 },
	  },
	  home = 'PB06'
	},
	[252] = { type = 'home', coords = vec3(-436.46,6264.1,30.09),
	  vehiclePositions = {
		[1] = { vec3(-429.99,6260.87,30.31), h = 258.67 },
	  },
	  home = 'PB07'
	},
	[253] = { type = 'home', coords = vec3(-402.95,6317.15,28.95),
	  vehiclePositions = {
		[1] = { vec3(-396.68,6311.99,28.84), h = 220.7 },
	  },
	  home = 'PB08'
	},
	[254] = { type = 'home', coords = vec3(-364.3,6337.74,29.85),
	  vehiclePositions = {
		[1] = { vec3(-360.16,6328.54,29.75), h = 220.61 },
	  },
	  home = 'PB09'
	},
	[255] = { type = 'home', coords = vec3(-311.14,6310.94,32.48),
	  vehiclePositions = {
		[1] = { vec3(-318.17,6317.76,31.77), h = 45.39 },
	  },
	  home = 'PB10'
	},
	[256] = { type = 'home', coords = vec3(-291.83,6335.9,32.49),
	  vehiclePositions = {
		[1] = { vec3(-296.49,6340.57,31.82), h = 46.26 },
	  },
	  home = 'PB11'
	},
	[257] = { type = 'home', coords = vec3(-272.11,6353.73,32.49),
	  vehiclePositions = {
		[1] = { vec3(-267.41,6355.22,32.4), h = 47.15 },
	  },
	  home = 'PB12'
	},
	[258] = { type = 'home', coords = vec3(-250.27,6355.12,31.5),
	  vehiclePositions = {
		[1] = { vec3(-255.08,6360.48,31.39), h = 45.08 },
	  },
	  home = 'PB13'
	},
	[259] = { type = 'home', coords = vec3(-271.22,6408.91,31.12),
	  vehiclePositions = {
		[1] = { vec3(-265.26,6406.49,30.88), h = 210.49 },
	  },
	  home = 'PB14'
	},
	[260] = { type = 'home', coords = vec3(-217.34,6374.6,31.68),
	  vehiclePositions = {
		[1] = { vec3(-219.54,6383.16,31.52), h = 45.87 },
	  },
	  home = 'PB15'
	},
	[261] = { type = 'home', coords = vec3(-238.3,6423.56,31.46),
	  vehiclePositions = {
		[1] = { vec3(-233.04,6420.27,31.16), h = 220.84 },
	  },
	  home = 'PB16'
	},
	[262] = { type = 'home', coords = vec3(-201.42,6396.75,31.87),
	  vehiclePositions = {
		[1] = { vec3(-201.53,6401.82,31.77), h = 46.62 },
	  },
	  home = 'PB17'
	},
	[263] = { type = 'home', coords = vec3(-229.57,6445.5,31.2),
	  vehiclePositions = {
		[1] = { vec3(-224.33,6435.29,31.11), h = 22964 },
	  },
	  home = 'PB18'
	},
	[264] = { type = 'home', coords = vec3(-187.33,6412.01,31.92),
	  vehiclePositions = {
		[1] = { vec3(-187.43,6418.12,31.78), h = 44.99 },
	  },
	  home = 'PB19'
	},
	[265] = { type = 'home', coords = vec3(-122.88,6561.7,29.53),
	  vehiclePositions = {
		[1] = { vec3(-115.59,6567.64,29.43), h = 224.24 },
	  },
	  home = 'PB20'
	},
	[266] = { type = 'home', coords = vec3(-101.69,6531.68,29.81),
	  vehiclePositions = {
		[1] = { vec3(-106.48,6536.09,29.72), h = 45.2 },
	  },
	  home = 'PB21'
	},
	[267] = { type = 'home', coords = vec3(-37.32,6578.82,32.35),
	  vehiclePositions = {
		[1] = { vec3(-40.97,6593.44,30.34), h = 37.22 },
	  },
	  home = 'PB22'
	},
	[268] = { type = 'home', coords = vec3(-15.06,6566.75,31.91),
	  vehiclePositions = {
		[1] = { vec3(-8.44,6561.16,31.88), h = 224.22 },
	  },
	  home = 'PB23'
	},
	[269] = { type = 'home', coords = vec3(11.48,6578.36,33.08),
	  vehiclePositions = {
		[1] = { vec3(15.78,6583.02,32.35), h = 223.198 },
	  },
	  home = 'PB24'
	},
	[270] = { type = 'home', coords = vec3(-17.04,6598.51,31.48),
	  vehiclePositions = {
		[1] = { vec3(-8.5,6598.24,31.38), h = 39.88 },
	  },
	  home = 'PB25'
	},
	[271] = { type = 'home', coords = vec3(-43.93,6634.26,30.23),
	  vehiclePositions = {
		[1] = { vec3(-52.4,6623.94,29.87), h = 221 },
	  },
	  home = 'PB26'
	},
	[272] = { type = 'home', coords = vec3(-14.79,6650.52,31.15),
	  vehiclePositions = {
		[1] = { vec3(-15.82,6645.42,31.03), h = 208.0 },
	  },
	  home = 'PB27'
	},
	[273] = { type = 'home', coords = vec3(2.37,6618.26,31.47),
	  vehiclePositions = {
		[1] = { vec3(-5.0,6618.68,31.34), h = 60.09 },
	  },
	  home = 'PB28'
	},
	[274] = { type = 'home', coords = vec3(25.06,6601.97,32.48),
	  vehiclePositions = {
		[1] = { vec3(36.23,6606.74,32.38), h = 267.62 },
	  },
	  home = 'PB29'
	},
	[275] = { type = 'home', coords = vec3(24.79,6659.22,31.65),
	  vehiclePositions = {
		[1] = { vec3(21.16,6661.48,31.44), h = 182.65 },
	  },
	  home = 'PB30'
	},
	[276] = { type = 'home', coords = vec3(81.27,6644.04,31.93),
	  vehiclePositions = {
		[1] = { vec3(72.41,6635.25,31.75), h = 142.72 },
	  },
	  home = 'PB31'
	},
}	
-- 	[277] = { type = 'service', coords = vec3(962.0,-121.06,74.36), perm = 'motoclub.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(966.67,-127.42,74.36), h = 150.01 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'sanctus', modelo = 'sanctus' },
-- 		{ vehicle = 'gburrito', modelo = 'gburrito' },
-- 		{ vehicle = 'slamvan2', modelo = 'slamvan2' }, 
-- 	  }
-- 	},
-- 	[278] = { type = 'service', coords = vec3(2179.71,82.49,228.07), perm = 'vermelhos.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(2183.62,82.75,228.15), h = 330.91 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},
-- 	[279] = { type = 'public', coords = vec3(1319.42,-741.87,65.51), perm = nil,  --rota
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1318.67,-737.72,65.51), h = 338.63 }, 
-- 	  }
-- 	},
-- 	[280] = { type = 'public', coords = vec3(970.38,-144.63,74.33), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(971.47,-140.15,74.36), h = 65.25 }, 
-- 	  }
-- 	},	
-- 	[281] = { type = 'service', coords = vec3(499.14,-3128.44,6.08), perm = 'serpentes.permissao', 
-- 	  vehiclePositions = {
-- 		[1] = { vec3(505.55,-3134.6,6.07), h = 88.76 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},	
-- 	[282] = { type = 'public', coords = vec3(500.32,343.91,135.42), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(496.04,336.47,134.39), h = 249.16 }, 
-- 	  }
-- 	},
-- 	[283] = { type = 'service', coords = vec3(-37.91,2031.64,170.65), perm = 'brancos.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-41.43,2035.9,170.69), h = 119.39 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},			
-- 	[284] = { type = 'public', coords = vec3(-46.99,2027.72,172.87), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-50.43,2030.7,173.29), h = 112.86 }, 
-- 	  }
-- 	},	
-- 	[285] = { type = 'service', coords = vec3(-26668.31,1301.64,147.45), perm = 'mercenarios.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-26662.76,1307.13,147.12), h = 268.06 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},
-- 	[286] = { type = 'service', coords = vec3(-1973.25,2049.25,75.0), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-1899.52,2036.91,140.75), h = 167.10 },
-- 		[2] = { vec3(-1895.52,2035.18,140.75), h = 165.54 },		
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 		{ vehicle = 'dubsta2', modelo = 'dubsta2' },		
-- 	  }
-- 	},	
-- 	[287] = { type = 'service', coords = vec3(117.68,-1305.38,29.24), perm = 'vanilla.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(124.22,-1312.66,29.08), h = 117.71 },		
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'stretch', modelo = 'stretch' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 		{ vehicle = 'superd', modelo = 'superd' },		
-- 	  }
-- 	},	
-- 	[288] = { type = 'service', coords = vec3(2335.86,4859.63,41.81), perm = nill,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(2344.91,4855.57,41.34), h = 227.93 },		
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'rebel2', modelo = 'rebel2' },
	
-- 	  }
-- 	},	
-- 	[289] = { type = 'service', coords = vec3(3989.63,8183.36,-129.84), perm = 'mafia.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-1804.31,456.66,128.29), h = 89.29 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 		{ vehicle = 'btype3', modelo = 'btype3' },		
-- 	  }
-- 	},	
-- 	[290] = { type = 'service', coords = vec3(3989.63,8183.36,-129.84), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(75.91,256.36,108.98), h = 95.66 }, 
-- 		[2] = { vec3(79.22,255.17,108.87), h = 95.66 }, 		
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'cg160', modelo = 'cg160' },
-- 	  }
-- 	},	 
-- 	[291] = { type = 'service', coords = vec3(1788.25,435.85,172.88), perm = 'amarelo.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1784.88,435.57,172.74), h = 3.17 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},	
-- 	[292] = { type = 'public', coords = vec3(-46.99,2027.72,172.87), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-50.43,2030.7,173.29), h = 112.86 }, 
-- 	  }
-- 	},	
-- 	[293] = { type = 'service', coords = vec3(121.71,-3037.28,7.05), perm = 'speed.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(124.15,-3041.27,7.05), h = 268.95 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'gauntlet2', modelo = 'gauntlet2' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},
-- 	[294] = { type = 'service', coords = vec3(3989.63,8183.36,-129.84), perm = nil,  --eletricista
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-809.85,-749.17,23.1), h = 92.56 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'comet2', modelo = 'comet2' },  
-- 	  }
-- 	},
-- 	[295] = { type = 'service', coords = vec3(-2425.06,1781.71,187.2), perm = 'azul.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-2427.3,1780.55,186.92), h = 45.28 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	  }
-- 	},	
-- 	[296] = { type = 'public', coords = vec3(1631.77,-13.88,166.01), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1628.55,-15.77,165.89), h = 58.13 }, 
-- 	  }
-- 	},
-- 	[297] = { type = 'service', coords = vec3(757.23,6461.51,31.45), perm = nil, -- colheita
-- 	  vehiclePositions = {
-- 		[1] = { vec3(761.07,6460.01,31.67), h = 163.64 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'rebel', modelo = 'rebel' },  
-- 		{ vehicle = 'tractor2', modelo = 'tractor2' },
-- 	  }
-- 	},
-- 	[298] = { type = 'public', coords = vec3(816.33,-962.39,26.64), perm = nil, --mecanica
-- 	  vehiclePositions = {
-- 		[1] = { vec3(818.49,-967.32,26.64), h = 201.86 }, 
-- 	  }
-- 	},
-- 	[299] = { type = 'service', coords = vec3(284.64,-329.5,46.21), perm = "pcivil.permissao", -- POLICIAL CIVIL
-- 	  vehiclePositions = {
-- 		[1] = { vec3(288.7,-329.49,46.12), h = 335.98 },
-- 		[2] = { vec3(291.96,-330.75,46.17), h = 335.98 },
-- 		[3] = { vec3(295.72,-332.28,46.24), h = 335.98 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'trail21pc', modelo = 'Trail 2021' }, 
-- 		{ vehicle = 'trailcivileie', modelo = 'Trail EIE' }, 
-- 		{ vehicle = 'traildope3', modelo = 'Trail Dope' },   
-- 		{ vehicle = 'trailgarra1', modelo = 'trailgarra1' },
-- 	  }
-- 	},
-- 	[300] = { type = 'service', coords = vec3(-1644.85,-989.02,13.02), perm = nil, -- SPAWN
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-1636.74,-1002.64,13.02), h = 49.32 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'faggio3', modelo = 'faggio3' },  
-- 	  }
-- 	},
-- 	[301] = { type = 'service', coords = vec3(-1393.83,-640.07,28.68), perm = 'bahamas.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-1396.17,-653.58,28.68), h = 34.70 },		
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'stretch', modelo = 'stretch' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 		{ vehicle = 'superd', modelo = 'superd' },		
-- 	  }
-- 	},
-- 	[302] = { type = 'service', coords = vec3(453.97,-600.69,28.59), perm = nil, -- emp_motorista
-- 	  vehiclePositions = {
-- 		[1] = { vec3(463.96,-607.49,28.5), h = 215.71 }, 
-- 		[2] = { vec3(462.1,-613.88,28.5), h = 215.71 }, 		
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'bus', modelo = 'bus' },
-- 	  }
-- 	},
-- 	[303] = { type = 'public', coords = vec3(-38.87,-1116.54,26.44), perm = nil, --- -341.42,-1567.69,25.23
-- 	vehiclePositions = {
-- 	    [1] = { vec3(-47.62,-1116.75,26.44), h = 0.30 }, 
-- 	}
--   },
-- 	[304] = { type = 'service', coords = vec3(281.76,-337.68,53.13), perm = "pcivil.permissao", -- HELI POLICIA CIVIL
-- 	  vehiclePositions = {
-- 		[1] = { vec3(286.81,-343.47,53.24), h = 180.00 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'as350pc', modelo = 'Aguia Policia Civil' },  
-- 	  }
-- 	},	
-- 	[305] = { type = 'service', coords = vec3(-341.27,-1567.56,25.23), perm = nil, -- SPAWN
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-343.34,-1561.94,24.95), h = 100.00 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'trash', modelo = 'Lixeiro' },  
-- 	  }
-- 	},	
-- 	[306] = { type = 'service', coords = vec3(-1605.19,-1164.37,1.28), perm = nil, --embarcação centro
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-1619.61,-1175.78,-0.08), h = 130.0 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'dinghy', modelo = 'dinghy' },
-- 		{ vehicle = 'jetmax', modelo = 'jetmax' },
-- 		{ vehicle = 'seashark3', modelo = 'seashark3' },
-- 	  }
-- 	},	
-- 	[307] = { type = 'service', coords = vec3(1338.25,4269.56,31.51), perm = nil, --embarcação norte
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1342.29,4268.02,29.76), h = 179.43 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'dinghy', modelo = 'dinghy' },
-- 		{ vehicle = 'jetmax', modelo = 'jetmax' },
-- 		{ vehicle = 'seashark3', modelo = 'seashark3' },
-- 	  }
-- 	},	
-- 	[308] = { type = 'service', coords = vec3(1852.84,2614.64,45.68), perm = nil, -- SPAWN
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1854.03,2620.38,45.68), h = 267.54 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'upzinho', modelo = 'upzinho' },  
-- 	  }
-- 	},	
-- 	[309] = { type = 'service', coords = vec3(293.4,-598.16,43.27), perm = 'paramedico.permissao',   ------ Garagem HP
-- 	  vehiclePositions = {
-- 		[1] = { vec3(296.99,-604.78,43.02), h = 71.08 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'ambulance', modelo = 'ambulance' },
-- 		{ vehicle = 'motosamu', modelo = 'motosamu' },		
-- 		{ vehicle = 'trail21samu1', modelo = 'trail21samu1' },				
-- 	  }
-- 	},	
-- 	[310] = { type = 'public', coords = vec3(-827.09,-1205.7,6.88), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-839.04,-1192.32,6.21), h = 51.85 }, 
-- 	  }
-- 	},	
-- 	[311] = { type = 'service', coords = vec3(69.07,103.3,79.08), perm = 'mecanico.permissao',
-- 	  vehiclePositions = {
-- 		[1] = { vec3(79.0,97.26,78.86), h = 71.18 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'flatbed3', modelo = 'flatbed3' },
-- 		{ vehicle = 'slamvan3', modelo = 'slamvan3' },
-- 	  }
-- 	},	
-- 	[312] = { type = 'service', coords = vec3(1145.8,-1515.34,34.85), perm = "paramedico.permissao",
-- 	vehiclePositions = {
-- 	  [1] = { vec3(1148.7,-1510.54,34.7), h = 361.0 },
-- 	},
-- 	vehicles = {
	
-- 	  { vehicle = 'emsjeep', modelo = 'Jeep EMS' },  
-- 	  { vehicle = 'emsrobozao', modelo = 'R1250 EMS' },
	
-- 	  }
--     },
-- 	[313] = { type = 'service', coords = vec3(-938.26,-2113.41,9.79), perm = 'pm.permissao',  --pm
-- 	  vehiclePositions = {
-- 		[1] = { vec3(-940.58,-2107.93,8.76), h = 42.886 },
-- 		[2] = { vec3(-938.37,-2105.17,8.76), h = 46.003 },
-- 		[3] = { vec3(-935.81,-2103.1,8.76), h = 44.659 },
-- 		[4] = { vec3(-933.55,-2100.42,8.76), h = 45.106 },
-- 		[5] = { vec3(-930.94,-2098.3,8.76), h = 42.486 },
-- 		[6] = { vec3(-928.71,-2095.71,8.76), h = 44.346 },								
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'dusterrp1', modelo = 'dusterrp1' },  
-- 		{ vehicle = 'trail17pm', modelo = 'trail17pm' },
-- 		{ vehicle = 'trail20pm', modelo = 'trail20pm' },
-- 		{ vehicle = 'spinaegis', modelo = 'spinaegis' },
-- 		{ vehicle = 'spineng', modelo = 'spineng' },
-- 		{ vehicle = 'VRdm1200', modelo = 'VRdm1200' },
-- 		{ vehicle = 's10sap', modelo = 'TRANSPORTE DE PRESOS' },
-- 		{ vehicle = 'pbus', modelo = 'pbus' },
-- 		{ vehicle = 'basepm', modelo = 'basepm' }, 
-- 	  }
-- 	},
-- 	[314] = { type = 'public', coords = vec3(1792.55,455.93,171.23), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(1791.28,461.09,171.22), h = 311.99 }, 
-- 	  }
-- 	},	
-- 	[315] = { type = 'service', coords = vec3(753.25, -1334.5, 26.24), perm = nil,
-- 	  vehiclePositions = {
-- 		[1] = { vec3(747.38, -1338.42, 26.24), h = 180.00 },
-- 	  },
-- 	  vehicles = {
-- 		{ vehicle = 'phantom', modelo = 'phantom' },
-- 		{ vehicle = 'packer', modelo = 'packer' },  
-- 	  }
-- 	},	
-- 	[316] = { type = 'service', coords = vec3(-68.24,-813.69,326.09), perm = 'patrocinador.permissao',  ---heliponto vip
-- 	vehiclePositions = {
-- 	  [1] = { vec3(-74.43,-818.26,326.18), h = 49.86 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'swift', modelo = 'swift' },
-- 	  { vehicle = 'swift2', modelo = 'swift2' },
-- 	  { vehicle = 'supervolito', modelo = 'supervolito' },
-- 	  { vehicle = 'supervolito2', modelo = 'supervolito2' },
-- 	  { vehicle = 'frogger', modelo = 'frogger' },
-- 	  { vehicle = 'maverick', modelo = 'maverick' },  
-- 	}
--   },
--   [317] = { type = 'service', coords = vec3(320.16,-1455.85,46.51), perm = 'patrocinador.permissao', -- heliponto vip
--   vehiclePositions = {
-- 	[1] = { vec3(313.95,-1464.74,46.51), h = 41.08 },
--   },
--   vehicles = {
-- 	{ vehicle = 'volatus', modelo = 'volatus' },  
--    }
--   }, 
--   [318] = { type = 'public', coords = vec3(136.04,-1278.9,29.37), perm = nil,
--   vehiclePositions = {
-- 	[1] = { vec3(133.8,-1271.76,28.74), h = 284.454 },		
--   }
--  },
-- 	[319] = { type = 'service', coords = vec3(3989.63,8183.36,-129.84), perm = 'mecanico.permissao', -- heli nova mec
-- 	vehiclePositions = {
-- 		[1] = { vec3(-361.44,-86.67,45.62), h = 41.08 },
-- 	},
-- 	vehicles = {
-- 		{ vehicle = 'flatbed3', modelo = 'flatbed3' },
-- 	}
-- 	},
-- 	[320] = { type = 'public', coords = vec3(-377.35,-149.38,38.69), perm = nil,
-- 	vehiclePositions = {
-- 		[1] = { vec3(-376.65,-146.34,38.46), h = 298.869 },		
-- 		[2] = { vec3(-378.56,-143.32,38.46), h = 298.869 },		
-- 		[3] = { vec3(-379.96,-140.14,38.46), h = 298.869 },		
-- 	}
-- 	},
-- 	[321] = { type = 'public', coords = vec3(-2662.06,1312.71,147.45), perm = nil,
-- 	vehiclePositions = {
-- 	[1] = { vec3(-2641.88,1305.75,145.13), h = 269.77 },			
-- 	}
-- 	},
-- 	[322] = { type = 'public', coords = vec3(-394.16,-100.88,40.26), perm = nil,
-- 	vehiclePositions = {
-- 		[1] = { vec3(-388.31,-110.73,38.86), h = 209.460 },		
-- 	}
-- 	},
-- 	[322] = { type = 'service', coords = vec3(-961.21,-1487.69,5.01), perm = 'yakuza.permissao', -- heli nova mec
-- 	vehiclePositions = {
-- 	[1] = { vec3(-963.61,-1484.32,5.02), h = 114.93 },
-- 	},
-- 	vehicles = {
-- 		{ vehicle = 'burrito3', modelo = 'burrito3' },
-- 		{ vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	}
-- 	},
-- 	[323] = { type = "service", coords = vec3(-360.32, -149.13, 38.25), perm = "mecanico.permissao", marker = "truck",
-- 	vehiclePositions = {
-- 		[1] = { vec3(-364.42, -148.12, 38.44), h = 31.98},
-- 	},
-- 	vehicles = {
-- 		{ vehicle = "cdaraptor", modelo = "Raptor Mecânica" },
-- 		{ vehicle = "scaniarepair", modelo = "Guincho" },
-- 		} 
-- 	},
-- 	[324] = { type = 'service', coords = vec3(1219.31,-1510.25,34.85), perm = 'paramedico.permissao',  -- heliponto
-- 	vehiclePositions = {
-- 	[1] = { vec3(1218.91,-1518.16,34.71), h = 85.72 },
-- 	},
-- 	vehicles = {
-- 	{ vehicle = 'maverick2', modelo = 'maverick2' },
-- 	}
-- 	},
-- 	[325] = { type = 'public', coords = vec3(44.41,-842.14,31.14), perm = nil,
-- 	vehiclePositions = {
-- 		[1] = { vec3(53.27,-847.05,30.84), h = 156.94 },			
-- 	}
-- 	},
-- 	[326] = { type = 'public', coords = vec3(219.61,-810.72,30.731), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(222.74,-804.32,30.3), h = 248.36 },
-- 	  [2] = { vec3(231.61,-807.71,30.09), h = 68.262 },
-- 	},
--     },
--   	[327] = { type = 'public', coords = vec3(55.67,-876.29,30.67), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(47.66,-871.59,29.79), h = 163.066 },
-- 	  [2] = { vec3(50.86,-872.92,29.85), h = 160.073 },
-- 	},
--     },
--   	[328] = { type = 'public', coords = vec3(2217.42,3968.96,36.33), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(2216.2,3965.44,35.56), h = 263.97 },
-- 	  [2] = { vec3(2227.66,3960.86,35.86), h = 263.537 },
-- 	},
--     },
--   	[329] = { type = 'public', coords = vec3(1426.1,-2514.34,55.23), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(1419.52,-2512.52,54.74), h = 189.66 },
-- 	  [2] = { vec3(1419.11,-2530.22,55.0), h = 10.480 },
-- 	},
--   },
--   	[330] = { type = 'public', coords = vec3(-1172.92,-1186.08,5.63), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(-1158.51,-1172.8,5.26), h = 104.937 },
-- 	  [2] = { vec3(-1157.5,-1176.16,5.26), h = 103.658 },
-- 	},
--     },
-- 	-------------------------------------------------------------------------------
--                     ---- MANSÕES VIPS ----
-- 	-------------------------------------------------------------------------------

-- 	[331] = { type = 'public', coords = vec3(1398.48,1114.97,114.84), perm = nil,  -- mansao 1
-- 	vehiclePositions = {
-- 		[1] = { vec3(1401.95,1118.01,114.84), h = 355.97 },
-- 	},
--     },
-- 	[332] = { type = 'public', coords = vec3(-556.68,828.71,197.59), perm = nil,  -- mansao 2
-- 	vehiclePositions = {
-- 		[1] = { vec3(-552.15,831.94,197.99), h = 349.87 },
-- 	},
--     },
-- 	[333] = { type = 'public', coords = vec3(-706.71,648.82,155.18), perm = nil,  -- mansao 3
-- 	vehiclePositions = {
-- 		[1] = { vec3(-710.0,654.47,155.18), h = 341.42 },
-- 	},
--     },
-- 	[334] = { type = 'public', coords = vec3(-101.47,825.9,235.73), perm = nil,  -- mansao 4
-- 	vehiclePositions = {
-- 		[1] = { vec3(-106.66,832.57,235.73), h = 355.97 },
-- 	},
--     },
-- 	[335] = { type = 'public', coords = vec3(-2592.47,1928.0,167.31), perm = nil,  -- mansao 5
-- 	vehiclePositions = {
-- 		[1] = { vec3(-2586.3,1930.75,167.31), h = 268.3 },
-- 	},
--     },
-- 	[336] = { type = 'public', coords = vec3(-1104.72,359.89,68.51), perm = nil,  -- mansao 6
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1097.3,358.95,68.5), h = 2.99 },
-- 	},
--     },
-- 	[337] = { type = 'public', coords = vec3(-131.62,1008.28,235.74), perm = nil,  -- mansao 7
-- 	vehiclePositions = {
-- 		[1] = { vec3(-126.98,1005.17,235.74), h = 200.28 },
-- 	},
--     },
-- 	[338] = { type = 'public', coords = vec3(-528.51,525.37,112.08), perm = nil,  -- mansao 8
-- 	vehiclePositions = {
-- 		[1] = { vec3(-527.2,529.39,111.86), h = 44.08 },
-- 	},
--     },
-- 	[339] = { type = 'public', coords = vec3(-1785.53,456.43,128.31), perm = nil,  -- mansao 9
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1791.63,458.24,128.31), h = 88.97 },
-- 	},
--     },
-- 	[340] = { type = 'public', coords = vec3(-824.54,267.62,86.2), perm = nil,  -- mansao 10
-- 	vehiclePositions = {
-- 		[1] = { vec3(-824.63,272.74,86.3), h = 339.04 },
-- 	},
--     },
-- 	[341] = { type = 'public', coords = vec3(-1750.71,367.78,89.73), perm = nil,  -- mansao 11
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1753.76,364.42,89.6), h = 113.09 },
-- 	},
--     },
-- 	[342] = { type = 'public', coords = vec3(-1750.71,367.78,89.73), perm = nil,  -- mansao 11
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1753.76,364.42,89.6), h = 113.09 },
-- 	},
--     },
-- 	[343] = { type = 'public', coords = vec3(-1934.83,563.6,115.6), perm = nil,  -- mansao 12
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1948.65,565.22,115.83), h = 67.45 },
-- 	},
--     },
-- 	[344] = { type = 'public', coords = vec3(-3196.0,822.41,8.93), perm = nil,  -- mansao 13
-- 	vehiclePositions = {
-- 		[1] = { vec3(-3199.43,811.33,8.93), h = 213.13 },
-- 	},
--     },
-- 	[345] = { type = 'public', coords = vec3(-2533.93,3764.46,13.11), perm = nil,  -- mansao 14
-- 	vehiclePositions = {
-- 		[1] = { vec3(-2526.89,3757.47,12.67), h = 172.6 },
-- 	},
--     },
-- 	[346] = { type = 'public', coords = vec3(-1979.44,-487.93,11.74), perm = nil,  -- mansao 15
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1975.94,-491.04,11.79), h = 327.31 },
-- 	},
--     },
-- 	[347] = { type = 'public', coords = vec3(-1895.14,2040.76,140.88), perm = nil,  -- mansao 16    	
-- 	vehiclePositions = {
-- 		[1] = { vec3(-1899.52,2036.91,140.75), h = 158.04 },
-- 	},
--     },
-- 	[348] = { type = 'public', coords = vec3(-523.5,5003.91,153.55), perm = nil,  -- mansao 17    	
-- 	vehiclePositions = {
-- 		[1] = { vec3(-520.46,4993.42,153.82), h = 148.16 },
-- 	},
--     },
-- 	[349] = { type = 'public', coords = vec3(-2343.44,3262.42,32.83), perm = nil,  -- exercito
-- 	vehiclePositions = {
-- 		[1] = { vec3(-2343.51,3247.93,32.83), h = 330.71 },
-- 	},
--     },
-- 	[350] = { type = "service", coords = vec3(-914.53, -2045.84, 9.41), perm = "policia.permissao",    -----GARAGEM CIVIL
-- 	vehiclePositions = {
-- 		[1] = { vec3(-909.92, -2047.6, 8.94), h = 225.49},
-- 		[2] = { vec3(-907.82, -2045.0, 8.94), h = 224.68}
	
	
-- 	},
-- 	vehicles = {
-- 		{ vehicle = "polr34", modelo = "Nissan Skyline R34" },
-- 		{ vehicle = "polgtr", modelo = "Nissan Skyline GTR" },
-- 		{ vehicle = "polgtr50", modelo = "Nissan Skyline GTR50" },
-- 		{ vehicle = "polbmwhz", modelo = "Bmw Boltz" },
-- 		{ vehicle = "polgt17", modelo = "Ford GT70" },
-- 		{ vehicle = "VRdm1200", modelo = "Ducati 1200" },
-- 		},
-- 	},
-- 	[351] = { type = "service", coords = vec3(-950.75,-2032.88,11.62), perm = "policia.permissao", marker = "helicóptero",
-- 	vehiclePositions = {
-- 		[1] = { vec3(-951.19,-2020.93,11.33), h = 135.00},
-- 	},
-- 	vehicles = {
-- 		{ vehicle = "polmav", modelo = "Helicóptero Policia" }
-- 	} 
-- 	},
-- 	[352] = { type = 'service', coords = vec3(2618.73,5367.2,48.1), perm = 'federal.permissao',  --heliponto
-- 	vehiclePositions = {
-- 	  [1] = { vec3(2614.05,5372.82,48.32), h = 237.19 },						
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'as350prf', modelo = 'as350prf' }, 
-- 	}
--     },
-- 	[353] = { type = 'service', coords = vec3(698.34,-801.32,16.48), perm = 'gamers.permissao',
-- 	vehiclePositions = {
-- 	  [1] = { vec3(692.18,-798.46,16.48), h = 86.08 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'burrito3', modelo = 'burrito3' },
-- 	  { vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	}
--     },
-- 	[354] = { type = 'service', coords = vec3(-2706.24,4080.22,17.78), perm = 'karting.permissao',
-- 	vehiclePositions = {
-- 	  [1] = { vec3(-2713.56,4076.35,17.78), h = 158.73 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'veto2', modelo = 'veto2' },
-- 	}
--     },
-- 	[355] = { type = 'service', coords = vec3(-498.9,30.5,44.8), perm = 'cyberpunk.permissao',
-- 	vehiclePositions = {
-- 	  [1] = { vec3(-492.73,21.14,44.88), h = 91.6 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'flatbed3', modelo = 'flatbed3' },
-- 	  { vehicle = 'slamvan3', modelo = 'slamvan3' },
-- 	}
--     },	
-- 	[356] = { type = 'service', coords = vec3(113.59,103.42,81.13), perm = nil,
-- 	vehiclePositions = {
-- 	  [1] = { vec3(114.49,94.47,80.81), h = 252.0 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'boxville2', modelo = 'boxville2' },
-- 	}
--     },
-- 	[357] = { type = 'service', coords = vec3(-1024.81,-1464.54,5.06), perm = 'japao.permissao',
-- 	vehiclePositions = {
-- 	  [1] = { vec3(-1014.29,-1471.01,5.02), h = 31.64 },
-- 	},
-- 	vehicles = {
-- 	  { vehicle = 'burrito3', modelo = 'burrito3' },
-- 	  { vehicle = 'sanchez2', modelo = 'sanchez2' },
-- 	}
--     },
  
  
  
  
  

						 					
  
--------------------------------------------------------------------------------
-- função para checar se o player é dono da casa para poder acessar à garagem --
--------------------------------------------------------------------------------
config.hasHome = function(source,user_id,home)
	local hasHome = vRP.query("homes/userList", {user_id = user_id, home = home})
	if hasHome and #hasHome > 0 then
		return true
	end
	TriggerClientEvent("Notify",source,"negado","Você não tem acesso à essa residência.",3000)
	return false
end
