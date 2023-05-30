config = {}

config.webhookrevistar = "---------------------1082554450167742575/Ngz-BpVmHRiqdIZw7nkuQ_r1rES5yQF22mXYWO-TISeBV_bXvA9BVQJv68amXoGVc6Jw"
config.webhookroubar = "---------------------1082554362167042129/dSqd-BdDf7AxCRRKHB1MD-iW4o10wEA02lJQ18R-NsSrT85UWtOYM7--HTboKrPQGcqh"
config.webhookdropar = "---------------------1082554093148586014/-0jSnfNVNUtOKzC-zT4APIn9ZaW_tfSElBl65jTxC7SXxfM61VWbk7OnlZmcB8N0WYPm"
config.webhookenviar = "---------------------1082554519096918016/Dn9hkFh6FllbKsWDZEoOT0Co2oAvHb9UZloQQfWIyjWPgdeFcchrca8TIejGqOVVdnjy"
config.webhookequipar = "---------------------1082553970343542865/O5HOKeOtlNReiuwooU5W3owGIw6_0_WloU_WOydrWdtpxl0ss8sxXwryh8rrwXjl00nn"
config.webhookrecarregar = "---------------------1082554165580017724/jdCsx3w8jOazvEClEXH2E-NVOO5966Kyp3sdo24Xvjtq5DB_HuCx-X83cQRk7CNGTngL"
config.webhookpegar = "---------------------1082553888688836708/m6M_yX14ta_i8IUvIpUlGS7DsajQIpUEjq3gi9JwJXb5rlduW0DKVuoVag8bOyY4LiZ0"
config.webhookbaucarro = "---------------------1082553301775679488/GBBbvZseLIHj5yXBMjBiWANO_13FDKe49eN6ZWyEz8J9IJQcXBAEtOkQDNlPvyXuFhxW"
config.webhookbau = "---------------------1082553413469995018/8ZVjF6UdT5RulaHwrP1MgAdB641Dk642JH8ymVRAV9vMGTMWDLyU3QwGGyrR_T0Qr-OB"
config.webhookbaucasas = "---------------------1082553167033667594/Bq1i77vByFxO8FD-N7lFLgZpqP8_XXnn5INonj9PVRhYtsQ6MhAUKQaHZPOClLeS3mlt"
config.webhookGuardarArmas = "---------------------1082553464355307600/BdVhDMldh4Oq5ZEIc_Jv7OxwdPa0ZLkiCF33IuENBPUduV3ICZHmym1KzQwGB0lb5K2L"
config.webhookSpawn = "---------------------1082553643204620288/f-ahJwDOCIbnoLwXFsulRaqkLGKjNwtJNvwVWuZums0Id7f2dSltIYbZ5zeetwGbM2ek"
config.webhookTryDup = "---------------------1082553741674287124/PL8GnUAzF3Yg08RRjmjUOC4Ms5w4Eqt5fnuSFvJJ8L7XzuVnypsA6Q8FT2zoQF27YyeZ"

--OPICIONAL DEPENDENDO DO ITEMS.LUA
config.webhookLockpick = "---------------------1082553837245714432/ZHCBnNUaUUwAEY59a77bbK5Zoxhcftk7cDri-zMhSUIb0eaXoRjUlWN8KaVKUpudx0S-"

config.drawMarker = function(x,y,z)
	DrawMarker(27,x,y,z-0.97,0,0,0,0,0,0,1.0,1.0,0.5,201, 0, 0,155,0,0,0,1)
end

config.images = "http://localhost/inventory/"
config.permSpawn = "mindmaster.permissao" --PERMISSAO PRA ACESSO AO COMANDO /arma e /item
config.nationGarages = true
config.nyoGarages = false

--LISTA DE ARMAS QUE NAO CONSEGUE DESEQUIPAR (ITEM SOME AO DESEQUIPAR)
config.policeItems = {
	["WEAPON_COMBATPISTOL"] = true,
	["WEAPON_NIGHTSTICK"] = true,
	["WEAPON_COMBATPDW"] = true,
	["WEAPON_STUNGUN"] = true,
	["WEAPON_PUMPSHOTGUN"] = true,
	["WEAPON_CARBINERIFLE"] = true,
	["WEAPON_CARBINERIFLE_MK2"] = true,
	["WEAPON_SMG"] = true,
	["WEAPON_APPISTOL"] = true,
}

--NOME DO BAU, X, Y, Z, PESO, PERMISSAO PRA ABRIR, WEBHOOK PRA GERAR LOG INDIVIDUAL 
config.chest = {
	["Admin"] = { "Admin", 215.55,-921.09,60.71,30000,"ac.permissao","---------------------1082562165417975868/GkkCLDQL82lfXiMDZ8yIsOgULG_EobZURP3OogdnQX68yT5ZakfNsj_faSiLX85w26iM" },
	["Policia"] = { "Policia", -949.72,-2045.6,9.41,30000,"policia.permissao","---------------------1082561620242346056/wa0dkSp2LU6AafrvO3-UzWI8ydQdJrcDgse0z-egBuBS5IhtWsGxBg2xBASRqhw3b5ZM" },
	--["BOPE"] = { "BOPE", 995.37,-2371.25,31.65,30000,"policia.permissao","" },	--- BOPE
	["Paramedico"] = { "Paramedico", 1135.36,-1540.42,35.39,30000,"paramedico.permissao","---------------------1082561678782238772/kCovSd6nco5ZZQcxdPVCfpDOuzOlYPknmt-B4tRFIitoadg7R8YwkjcAvqTkQ7_0w_9x" },
	--["Diretor"] = { "Diretor", -343.11,-157.71,44.59,30000,"diretor.permissao","" },
	
	--["Mecanico2"] = { "Mecanico2", 886.53,-2097.62,34.89,3000,"mecanico.permissao","" },
	["Mecanico"] = { "Mecanico", 802.83,-973.87,30.54,3000,"mecanico.permissao","---------------------1082561748197974016/A2eDfL79PIeivSSI_bHs0fjGyR1G97HSNoJljeKNQyJqdCrOIpqozc32ZqwO8PJWmbCN" },

	["BRATVA"] = { "BRATVA",419.18,22.51,91.94,3000,"bratva.permissao","---------------------1082584819646595152/XtJFJhrG4lixnJzYVmInAIIpW4lDNj2oDp3l75sysr8JSobxv-wW2ph7RCeG79B-Ak7o" }, -- ARMA -- OK
	["CARTEL"] = { "CARTEL", -1877.86,2063.87,135.92,3000,"carteldemedelin.permissao","---------------------1082585026132181102/VZuHZ6hni6MqceMhgiml-GdK91Z_-XadIJ-Mi-FiqidpitwBZ0g6b416KTg9g_Mvr8vr" }, -- ARMA -- OK
	["TEQUILA"] = { "TEQUILA", -562.98,281.57,85.68,3000,"tequila.permissao","---------------------1082588665194233916/hnsdrazwLSq9vTK1VqofqFS1YwG71G0l7yQqxWR55kIdsTS8TpZUAO02S3IDcXlo6fUp" }, -- CONTRABANDO  -- OK
	["YAKUZA"] = { "YAKUZA", -872.64,-1456.84,7.53,3000,"yakuza.permissao","---------------------1082585243384549416/c5dcc6xCWQuj_pvfb7RspG_tUtvJUlR7_15rV_1y3IpzZPeNmoYzgYEy6HHAlYC631g8" }, -- MUNICAO
	["TRIADE"] = { "TRIADE", -2672.61,1333.3,144.26,3000,"triade.permissao","---------------------1082585414768009246/zkAlk2ffnWu-Y5xW92G264NgZma3CukemaTt40wXRfXI0TdR1no_74KROI9jHKuBb8f0" }, -- MUNICAO -- OK
	["BAHAMAS"] = { "BAHAMAS", -1369.26,-623.91,30.32,3000,"bahamas.permissao","---------------------1082586726733713458/5ZigLV5To8UwpTvsHXz-mEoExVQclKf0tERYOXjzr-hCAP4_KUayIBxfyo6H0m-1FJbr" }, -- LAVAGEM -- OK
	["CAMORRA"] = { "CAMORRA",-2618.62,1692.66,142.38,3000,"camorra.permissao","---------------------1082588873051340830/XHpv-2kY-9PS0hojSXi4r6aJKk9RwMV_0aQP5a-L23YfbLBm3ereAaILVUsq6syfkW8a" },-- CONTRABANDO -- OK
	["COLOMBIA"] = { "COLOMBIA", 1515.5,-2137.38,76.73,3000,"colombia.permissao","---------------------1082588184933830656/MAPK6aoSOMskmyZt0mxXjI_qB2InOBWgkAZPbLI229V76gf7v6kDRq7_Aef9fLhCLNoT" }, -- COCAINA -- OK
	["CANADA"] = { "CANADA", 2860.68,2681.59,102.16,3000,"canada.permissao","---------------------1082587372438421504/Eg1wOr70j-5oaGCJFaQK0msk7KTMdbLT9WdJ9vwpbcX2TYk5uheR45_HAya5UGNjwzgz" }, -- LSD -- OK
	["GROTA"] = { "GROTA", 1245.19,-172.46,90.73,3000,"grota.permissao","---------------------1082585600995098714/qcVLzrmWFNOciE6kOJxiQTP-Ew2-8A9p1AQFkssPujAmoJ65fGKGp9ywQ8MN3ysPtEx1" }, -- MACONHA -- OK
	["Motoclub"] = { "Motoclub", 985.91,-133.92,78.9,3000,"motoclub.permissao","---------------------1082586992237346826/6t3RXErr5f68rVr_Il5piXqx2OJEqC3RXRW_grYl2gtEtvgAKGXXIbGVhl9n6i0lA_3k" }, -- DESMANCHE -- OK
	["Hells"] = { "Hells",479.35,-1326.68,29.21,3000,"hells.permissao","---------------------1082587123649089556/3VxSjmFWkHG-Rq_mkJ2UYQXNV7M_W_NpUHAtsatNh4QSuifkGmJqrAOfdiifcLRCQfLa" }, -- DESMANCHE -- OK
	["EGITO"] = { "EGITO",-1569.22,4766.65,63.25,3000,"egito.permissao","---------------------1082588421668749392/FDb92XL0JBksWecTWHEKwVaCGdF7s04RJdshJfW80cS4nzQurVNnX845-bnvAL8ua5qy" }, -- LSD -- OK
	["Turquia"] = { "Turquia",1331.63,-676.53,75.86,3000,"turquia.permissao","---------------------1082586204568031252/U6TZgSuvGbv3ODuPSAUugBrLceNJNVQXIkWKEpr1WyVCaJ5w0UJdqERIUpFL11J7638c" }, -- MACONHA -- OK
	["FRANCA"] = { "FRANCA",2128.65,-67.53,255.21,3000,"franca.permissao","---------------------1082586056832069753/GoFzcrw2LNVdY0FeOF6XZIhSLFbgCSI-JV8NvZNKw4mo9uxGgrP9xx6n4OBjfTY_Isnn" }, -- COCAINA -- OK
	["Vanilla"] = { "Vanilla",91.09,-1297.44,29.26,3000,"vanilla.permissao","---------------------1082586532147372132/9e3eGkSupI9XtLs2Si8MYgkS5jGTROC5U_dIGu76tZyC6vMaC1gnvydKCj9kLybRGWKA" }, -- LAVAGEM -- OK

	["MansaoMalibu"] = { "MansaoMalibu",-3233.57,814.65,14.08,3000,"mansaomalibu.permissao","" },	-- MANSAO MALIBU
	["MansaoGold"] = { "MansaoGold",-1718.95,378.29,89.73,3000,"mansaogold.permissao","" },		-- MANSAO GOLD	
	["MansaoExtra01"] = { "MansaoExtra01",-2610.65,1710.65,146.33,3000,"mansaoextra01.permissao","" },		-- VERMELHO	
	["MansaoExtra02"] = { "MansaoExtra02",0,0,0,3000,"mansaoextra02.permissao","" },		-- 	
	["Cobertura01"] = { "Cobertura01",0,0,0,3000,"cobertura01.permissao","" },		-- 	
	["Cobertura2"] = { "Cobertura2",-264.68,-726.97,125.48,3000,"cobertura2.permissao","" },		-- 	
}

config.shopList = {
	 	{ 25.68,-1346.6,29.5,"departamentStore" },
	 	{ 2556.47,382.05,108.63,"departamentStore" },
	 	{ 1163.55,-323.02,69.21,"departamentStore" },
	 	{ -707.31,-913.75,19.22,"departamentStore" },
	 	{ -47.72,-1757.23,29.43,"departamentStore" },
	 	{ 373.89,326.86,103.57,"departamentStore" },
	 	{ -3242.95,1001.28,12.84,"departamentStore" },
	 	{ 1729.3,6415.48,35.04,"departamentStore" },
	 	{ 548.0,2670.35,42.16,"departamentStore" },
	 	{ 1960.69,3741.34,32.35,"departamentStore" },
	 	{ 2677.92,3280.85,55.25,"departamentStore" },
	 	{ 1698.5,4924.09,42.07,"departamentStore" },
	 	{ -1820.82,793.21,138.12,"departamentStore" },
	 	{ 1393.21,3605.26,34.99,"departamentStore" },
	 	{ -2967.78,390.92,15.05,"departamentStore" },
	 	{ -3040.14,585.44,7.91,"departamentStore" },
	 	{ 1135.56,-982.24,46.42,"departamentStore" },
	 	{ 1166.0,2709.45,38.16,"departamentStore" },
	 	{ -1487.21,-378.99,40.17,"departamentStore" },
	 	{ -1222.76,-907.21,12.33,"departamentStore" },
		{ 46.63,-1749.67,29.64,"departamentStore" },
		{ 55.17,-1739.31,29.6,"departamentStore2" },
	 	{ 1692.62,3759.50,34.70,"ammunationStore" },
	 	{ 252.89,-49.25,69.94,"ammunationStore" },
	 	{ 843.28,-1034.02,28.19,"ammunationStore" },
	 	{ -331.35,6083.45,31.45,"ammunationStore" },
	 	{ -663.15,-934.92,21.82,"ammunationStore" },
	 	{ -1305.18,-393.48,36.69,"ammunationStore" },
	 	{ -1118.80,2698.22,18.55,"ammunationStore" },
	 	{ 2568.83,293.89,108.73,"ammunationStore" },
	 	{ -3172.68,1087.10,20.83,"ammunationStore" },
	 	{ 21.32,-1106.44,29.79,"ammunationStore" },
	 	{ 811.19,-2157.67,29.61,"ammunationStore" },
	 	{ 811.19,-2157.67,29.61,"ammunationStore" },
	
	 	{ -2166.44,5197.46,16.89,"ilegalStore" },
	
	 	--{ -1519.03,115.47,50.06,"gunsCraft" },  --BLOODS(PLAYBOY)
	 	--{ -1870.5,2061.56,135.44,"gunsCraft" }, --CRIPS(VINICULA)
	 	--{ 1402.33,1139.85,109.75,"drugCraft" }, --BRATVA(FAZENDA)
		
	 	--{ -875.68,-1458.65,7.53,"ammoCraft" },  --YAKUZA (YAKUZA)
	 	--{ 568.09,-3126.8,18.77,"ammoCraft" },   --AZTECAS (DOCAS)
	 	--{ -2678.49,1330.4,140.89,"ammoCraft" }, --COSANOSTRA (MONTANHAS)
	
	 	--{ -621.45,-231.87,38.06,"joalheriaStore" },
	 	{ -1371.69,-626.51,30.82,"bebidasStore" },
		{ 127.56,-1284.2,29.28,"bebidasStore" },
}
	
config.itemShops = {
    ["departamentStore"] = {
        ["perm"] = nil,
        ["cash"] = "limpo",
  		["list"] = {
  			--["isca"] = 150,
  			["celular"] = 2500,
  			["militec"] = 5000,
  			["repairkit"] = 15000,
  			["radio"] = 1000,
  			["mochila"] = 10000,
  			["roupas"] = 5000,
  			["alianca"] = 20000,
  			["energetico"] = 600,
  			["cerveja"] = 250,
  			["whisky"] = 250,
  			["tequila"] = 250,
  			["conhaque"] = 250,
  			["absinto"] = 250,
  			["vodka"] = 250,
  			["jogodepneu"] = 3500,
  			["taco"] = 250,
  			["agua"] = 200,
  			--["corvina"] = 4700,
  			--["salmao"] = 5000,
  			--["pacu"] = 5500,
  			--["pintado"] = 5700,
  			--["pirarucu"] = 6000,
  			--["tilapia"] = 6500,
  			--["tucunare"] = 7000,
  		}
  	},
  	["departamentStore2"] = {
  		["perm"] = nil,
  		["cash"] = "limpo",
  		["list"] = {
			["coca"] = 600,
			["cafe"] = 250,
			["toddynho"] = 600,
			["hamburguer"] = 700,
			["sanduiche"] = 600,
			["chocolate"] = 600,
			["biscoito"] = 250,
			["pizza"] = 400,
  		}
  	},
  	["bebidasStore"] = {
  		["perm"] = nil,
  		["cash"] = "limpo",
  		["list"] = {
  			["energetico"] = 7000,
  			["whisky"] = 5000,
  			["tequila"] = 5000,
  			["conhaque"] = 5000,
  			["absinto"] = 5000,
  			["vodka"] = 5000,
  		}
  	},
  	["joalheriaStore"] = {
  		["perm"] = nil,
  		["cash"] = "limpo",
  		["list"] = {
  			["ouro2"] = 400,
  			["ferro2"] = 300,
  			["bronze2"] = 350,
  			["topazio2"] = 300,
  			["ruby2"] = 300,
  			["safira2"] = 300,
  			["ouro"] = 300,
  			["ferro"] = 300,
  			["bronze"] = 300,
  			["topazio"] = 300,
  			["ruby"] = 300,
  			["safira"] = 300,
  		}
  	},
  	["ammunationStore"] = {
  		["perm"] = nil,
  		["cash"] = "limpo",
  		["list"] = {
  			["wbody|WEAPON_KNIFE"] = 50000,
  			["wbody|WEAPON_KNUCKLE"] = 50000,
  			["wbody|WEAPON_SWITCHBLADE"] = 50000,
  			["wbody|WEAPON_POOLCUE"] = 50000,
  			["wbody|WEAPON_WRENCH"] = 50000,
  			["wbody|WEAPON_BAT"] = 50000,
  			["wbody|GADGET_PARACHUTE"] = 10000,
  			["modificacaodearma"] = 25000,
  		}
  	},
  	["ilegalStore"] = {
  		["perm"] = "ilegal.permissao",
  		["cash"] = "sujo",
  		["list"] = {
  			["polvora"] = 500,
  			["molas"] = 5000,
  			["gatilho"] = 5000,
  			["placa-metal"] = 10000,
  		}
  	},
}
config.itemlist = {
	["kevlar"] = { index = "kevlar", nome = "Kevlar", type = "usar", peso = 1 },
	["skin1"] = { index = "skin1", nome = "Travesti", type = "usar", peso = 1 },
	["c4"] = { index = "c4", nome = "C4", type = "usar", peso = 1 },
	["jbl"] = { index = "jbl", nome = "JBL", type = "usar", peso = 1 },
	["serra"] = { index = "serra", nome = "Serra", type = "usar", peso = 1 },
	["ziper"] = { index = "ziper", nome = "Ziper", type = "usar", peso = 1 },
	["furadeira"] = { index = "furadeira", nome = "Furadeira", type = "usar", peso = 1 },
	["sacodelixo"] = { index = "sacodelixo", nome = "Saco de lixo", type = "usar", peso = 1 },
	["telefonedescartavel"] = { index = "telefonedescartavel", nome = "telefonedescartavel", type = "usar", peso = 1 },
	["relogioroubado"] = { index = "relogioroubado", nome = "Relógio Roubado", type = "usar", peso = 4.2 },
	["pulseiraroubada"] = { index = "pulseiraroubada", nome = "Pulseira Roubada", type = "usar", peso = 1 },
	["anelroubado"] = { index = "anelroubado", nome = "Anel Roubado", type = "usar", peso = 1 },
	["colarroubado"] = { index = "colarroubado", nome = "Colar Roubado", type = "usar", peso = 1 },
	["brincoroubado"] = { index = "brincoroubado", nome = "Brinco Roubado", type = "usar", peso = 1 },
	["carteiraroubada"] = { index = "carteiraroubada", nome = "Carteira Roubada", type = "usar", peso = 1 },
	["tabletroubado"] = { index = "tabletroubado", nome = "Tablet Roubado", type = "usar", peso = 1 },
	["sapatosroubado"] = { index = "sapatosroubado", nome = "Sapatos Roubado", type = "usar", peso = 1 },
	["sacoplastico"] = { index = "sacoplastico", nome = "Saco de Plastico", type = "usar", peso = 1 },
	["plastico"] = { index = "plastico", nome = "Plastico", type = "usar", peso = 1 },
	["jogodepneu"] = { index = "jogodepneu", nome = "Jogo de Pneu", type = "usar", peso = 1 },
	["encomenda"] = { index = "encomenda", nome = "Encomenda", type = "usar", peso = 1 },
	["aco"] = { index = "aco", nome = "Aço", type = "usar", peso = 0.3 },
	["pizza"] = { index = "pizza", nome = "Pizza", type = "usar", peso = 0.5 },
	["lanche"] = { index = "lanche", nome = "Lanche", type = "usar", peso = 0.5 },
	["sanduiche"] = { index = "sanduiche", nome = "Sanduiche", type = "usar", peso = 0.5 },
	["tomate"] = { index = "tomate", nome = "Tomate", type = "usar", peso = 0.5 },
	["taco"] = { index = "taco", nome = "Taco", type = "usar", peso = 0.5 },
	["hamburguer"] = { index = "hamburguer", nome = "Hamburguer", type = "usar", peso = 0.5 },
	["chocolate"] = { index = "chocolate", nome = "Chocolate", type = "usar", peso = 0.5 },
	["laranja"] = { index = "laranja", nome = "Laranja", type = "usar", peso = 0.5 },
	["agua"] = { index = "agua", nome = "Agua", type = "usar", peso = 0.5 },
	["coca"] = { index = "coca", nome = "Coca Cola", type = "usar", peso = 0.5 },
	["cafe"] = { index = "cafe", nome = "Café", type = "usar", peso = 1 },
	["toddynho"] = { index = "toddynho", nome = "Toddynho", type = "usar", peso = 0.5 },
	["garrafavazia"] = { index = "garrafavazia", nome = "Garrafa Vazia", type = "usar", peso = 0.5 },
	["energetico"] = { index = "energetico", nome = "Energético", type = "usar", peso = 1 },
	["diamante"] = { index = "diamante", nome = "Min. Diamante", type = "usar", peso = 1 },
	["identidade"] = { index = "identidade", nome = "Identidade", type = "usar", peso = 1 },
	["colete"] = { index = "colete", nome = "Colete Balístico", type = "usar", peso = 1 },
	["kitdemergulho"] = { index = "kitdemergulho", nome = "Kit de Mergulho", type = "usar", peso = 1 },
	["binoculos"] = { index = "binoculos", nome = "Binoculos", type = "usar", peso = 1 },
	["tiocoin"] = { index = "tiocoin", nome = "Tio Coin", type = "usar", peso = 0.1 },
	["folhadecoca"] = { index = "folhadecoca", nome = "folhadecoca", type = "usar", peso = 0.1 },
	["pastadecoca"] = { index = "pastadecoca", nome = "pastadecoca", type = "usar", peso = 0.1 },
	["acidobateria"] = { index = "acidobateria", nome = "Acido de Bateria", type = "usar", peso = 0.1 },
	["anfetamina"] = { index = "anfetamina", nome = "Anfetamina", type = "usar", peso = 0.1 },
	["dinheiroimpresso"] = { index = "dinheiroimpresso", nome = "Dinheiro Impresso", type = "usar", peso = 0.1 },
	["rodacarro"] = { index = "rodacarro", nome = "Roda de Carro", type = "usar", peso = 1 },
	["portacarro"] = { index = "portacarro", nome = "Porta de Carro", type = "usar", peso = 5 },
	["rodamoto"] = { index = "rodamoto", nome = "Roda de Moto", type = "usar", peso = 1 },
	["corda"] = { index = "corda", nome = "Corda", type = "usar", peso = 1 },
	["ouro"] = { index = "ouro", nome = "Min. Ouro", type = "usar", peso = 1 },
	["bronze"] = { index = "bronze", nome = "Min. Bronze", type = "usar", peso = 1 },
	["ferro"] = { index = "ferro", nome = "Min. Ferro", type = "usar", peso = 1 },
	["rubi"] = { index = "rubi", nome = "Min. Rubi", type = "usar", peso = 1 },
	["esmeralda"] = { index = "esmeralda", nome = "Min. Esmeralda", type = "usar", peso = 1 },
	["safira"] = { index = "safira", nome = "Min. Safira", type = "usar", peso = 1 },
	["topazio"] = { index = "topazio", nome = "Min. Topazio", type = "usar", peso = 1 },
	["ametista"] = { index = "ametista", nome = "Min. Ametista", type = "usar", peso = 1 },
	["diamante2"] = { index = "diamante2", nome = "Diamante", type = "usar", peso = 1 },
	["ouro2"] = { index = "ouro2", nome = "Ouro", type = "usar", peso = 1 },
	["bronze2"] = { index = "bronze2", nome = "Bronze", type = "usar", peso = 1 },
	["ferro2"] = { index = "ferro2", nome = "Ferro", type = "usar", peso = 1 },
	["rubi2"] = { index = "rubi2", nome = "Rubi", type = "usar", peso = 1 },
	["esmeralda2"] = { index = "esmeralda2", nome = "Esmeralda", type = "usar", peso = 1 },
	["safira2"] = { index = "safira2", nome = "Safira", type = "usar", peso = 1 },
	["topazio2"] = { index = "topazio2", nome = "Topazio", type = "usar", peso = 1 },
	["ametista2"] = { index = "ametista2", nome = "Ametista", type = "usar", peso = 1 },
	["biscoito"] = { index = "biscoito", nome = "Biscoito", type = "usar", peso = 1 },
	["relogio"] = { index = "relogio", nome = "Relógio", type = "usar", peso = 2 },
	
	["bandagem"] = { index = "bandagem", nome = "Bandagem", type = "usar", peso = 1 },
	["vibrador"] = { index = "vibrador", nome = "Vibrador", type = "usar", peso = 1 },
	["camisinha"] = { index = "camisinha", nome = "Camisinha", type = "usar", peso = 1 },
	["cintaralho"] = { index = "cintaralho", nome = "Cintaralho", type = "usar", peso = 1 },
	["pluganal"] = { index = "pluganal", nome = "Plug Anal", type = "usar", peso = 1 },
	["papel"] = { index = "papel", nome = "Papel", type = "usar", peso = 1 },
	["caneta"] = { index = "caneta", nome = "Caneta", type = "usar", peso = 1 },
	["r-bandagem"] = { index = "r-bandagem", nome = "Receita Bandagem", type = "usar", peso = 1 },
	["dorfrex"] = { index = "dorfrex", nome = "Dorfrex", type = "usar", peso = 1 },
	["r-dorfrex"] = { index = "r-dorfrex", nome = "Receita Dorfrex", type = "usar", peso = 1 },
	["perola"] = { index = "perola", nome = "Perola", type = "usar", peso = 1 },
	["garrafadeleite"] = { index = "garrafadeleite", nome = "Garrafa de Leite", type = "usar", peso = 1 },
	["roupas"] = { index = "roupas", nome = "Roupas", type = "usar", peso = 5 },
	["skate"] = { index = "skate", nome = "Skate", type = "usar", peso = 10  },
	["celular"] = { index = "celular", nome = "Celular", type = "usar", peso = 1 },
	["radio"] = { index = "radio", nome = "Radio", type = "usar", peso = 1 },
	["mochila"] = { index = "mochila", nome = "Mochila", type = "usar", peso = 1 },
	["mascara"] = { index = "mascara", nome = "Mascara", type = "usar", peso = 1 },
	["oculos"] = { index = "oculos", nome = "Óculos", type = "usar", peso = 1 },
	["militec"] = { index = "militec", nome = "Militec", type = "usar", peso = 1 },
	["repairkit"] = { index = "repairkit", nome = "Kit de Reparos", type = "usar", peso = 5 },
	["pecadearma"] = { index = "pecadearma", nome = "Peça De Arma", type = "usar", peso = 0.1 },
	["pecadefuzil"] = { index = "pecadefuzil", nome = "Peça De Fuzil", type = "usar", peso = 0.2 },
	["fio"] = { index = "fio", nome = "Fio", type = "usar", peso = 0.3 },
	["aluminio"] = { index = "aluminio", nome = "Aluminio", type = "usar", peso = 0.3 },
	["cobre"] = { index = "cobre", nome = "Cobre", type = "usar", peso = 0.3 },
	["modificacaodearma"] = { index = "modificacaodearma", nome = "Modificação De Arma", type = "usar", peso = 1 },
	["alianca"] = { index = "alianca", nome = "Aliança", type = "usar", peso = 1 },
	["isca"] = { index = "isca", nome = "Isca", type = "usar", peso = 1 },
	["pacu"] = { index = "pacu", nome = "Pacu", type = "usar", peso = 1 },
	["pirarucu"] = { index = "pirarucu", nome = "Pirarucu", type = "usar", peso = 1 },
	["dourado"] = { index = "dourado", nome = "Dourado", type = "usar", peso = 1 },
	["salmao"] = { index = "salmao", nome = "Salmao", type = "usar", peso = 1 },
	["corvina"] = { index = "corvina", nome = "Corvina", type = "usar", peso = 1 },
	["pintado"] = { index = "pintado", nome = "Pintado", type = "usar", peso = 1 },
	["tilapia"] = { index = "tilapia", nome = "Tilapia", type = "usar", peso = 1 },
	["tucunare"] = { index = "tucunare", nome = "Tucunare", type = "usar", peso = 1 },
	["lambari"] = { index = "lambari", nome = "Lambari", type = "usar", peso = 1 },
	["dinheiro-sujo"] = { index = "dinheiro-sujo", nome = "Dinheiro Sujo", type = "usar", peso = 0 },
	["algema"] = { index = "algema", nome = "Algema", type = "usar", peso = 1 },
	["lockpick"] = { index = "lockpick", nome = "Lockpick", type = "usar", peso = 1 },
	["masterpick"] = { index = "masterpick", nome = "Masterpick", type = "usar", peso = 1 },
	["capuz"] = { index = "capuz", nome = "Capuz", type = "usar", peso = 1 },
	["placa"] = { index = "placa", nome = "Placa", type = "usar", peso = 1 },
	["pendrive"] = { index = "pendrive", nome = "Pendrive", type = "usar", peso = 1 },
	["ticket"] = { index = "ticket", nome = "Ticket", type = "usar", peso = 1 },
	["cerveja"] = { index = "cerveja", nome = "Cerveja", type = "usar", peso = 1 },
	["whisky"] = { index = "whisky", nome = "Whisky", type = "usar", peso = 1 },
	["tequila"] = { index = "tequila", nome = "Tequila", type = "usar", peso = 1 },
	["conhaque"] = { index = "conhaque", nome = "Conhaque", type = "usar", peso = 1 },
	["absinto"] = { index = "absinto", nome = "Absinto", type = "usar", peso = 1 },
	["vodka"] = { index = "vodka", nome = "Vodka", type = "usar", peso = 1 },
	["paracetamil"] = { index = "paracetamil", nome = "Paracetamil", type = "usar", peso = 1 },
	["voltarom"] = { index = "voltarom", nome = "Voltarom", type = "usar", peso = 1 },
	["trandrylux"] = { index = "trandrylux", nome = "Trandrylux", type = "usar", peso = 1 },
	["buscopom"] = { index = "buscopom", nome = "Buscopom", type = "usar", peso = 1 },
	["lancaperfume"] = { index = "lancaperfume", nome = "Lança Perfume", type = "usar", peso = 0.3 },
	["meta-alta"] = { index = "meta-alta", nome = "Meta HQ", type = "usar", peso = 0.3 },
	["metanfetamina"] = { index = "metanfetamina", nome = "Metanfetamina", type = "usar", peso = 0.3 },
	["composito-alta"] = { index = "composito-alta", nome = "Compósito HQ", type = "usar", peso = 0.3 },
	["nitrato-amonia"] = { index = "nitrato-amonia", nome = "Nitrato de Amônia", type = "usar", peso = 0.3 },
	["fungos"] = { index = "fungos", nome = "Fungos", type = "usar", peso = 0.3  },
	["acido-lisergico"] = { index = "acido-lisergico", nome = "Acido Lisergico", type = "usar", peso = 0.3  },
	["lsd"] = { index = "lsd", nome = "LSD", type = "usar", peso = 0.3  },
	["coca-alta"] = { index = "coca-alta", nome = "Cocaína HQ", type = "usar", peso = 0.3 },
	["cocaina"] = { index = "cocaina", nome = "Cocaína", type = "usar", peso = 0.3 },
	["pasta-alta"] = { index = "pasta-alta", nome = "Pasta Base HQ", type = "usar", peso = 0.3 },
	["folhas-coca"] = { index = "folhas-coca", nome = "Folhas de Coca", type = "usar", peso = 0.3 },
	["maconha-alta"] = { index = "maconha-alta", nome = "Maconha HQ", type = "usar", peso = 0.3 },
	["maconha"] = { index = "maconha", nome = "Maconha", type = "usar", peso = 0.3 },
	["adubo"] = { index = "adubo", nome = "Adubo", type = "usar", peso = 0.3 },
	["fertilizante"] = { index = "fertilizante", nome = "Fertilizante", type = "usar", peso = 0.3 },
	["maconha-dichavada"] = { index = "maconha-dichavada", nome = "Maconha Dichavada", type = "usar", peso = 0.3 },
	["canabis-alta"] = { index = "canabis-alta", nome = "Cannabis HQ", type = "usar", peso = 0.3 },
	["molas"] = { index = "molas", nome = "Molas", type = "usar", peso = 0.1 },
	["placa-metal"] = { index = "placa-metal", nome = "Placa de Metal", type = "usar", peso = 0.1 },
	["gatilho"] = { index = "gatilho", nome = "Gatilho", type = "usar", peso = 0.5 },
	["capsulas"] = { index = "capsulas", nome = "Capsulas", type = "usar", peso = 0.1 },
	["polvora"] = { index = "polvora", nome = "Polvora", type = "usar", peso = 0.1 },
	["graos"] = { index = "graos", nome = "Graos", type = "usar", peso = 0.8 },
	["graosimpuros"] = { index = "graosimpuros", nome = "Graos Impuros", type = "usar", peso = 0.8 },
	["wbody|GADGET_PARACHUTE"] = { index = "paraquedas", nome = "Paraquedas", type = "equipar", peso = 5 },
	["wbody|WEAPON_STICKYBOMB"] = { index = "bombaadesiva", nome = "Bomba Adesiva", type = "equipar", peso = 5 },
	["wbody|WEAPON_GRENADE"] = { index = "granada", nome = "Granada", type = "equipar", peso = 5 },
	["wbody|WEAPON_PETROLCAN"] = { index = "gasolina", nome = "Galão de Gasolina", type = "equipar", peso = 5 },
	["wbody|WEAPON_FLARE"] = { index = "sinalizador", nome = "Sinalizador", type = "equipar", peso = 5 },
	["wbody|WEAPON_FIREEXTINGUISHER"] = { index = "extintor", nome = "Extintor", type = "equipar", peso = 5 },
	["wbody|WEAPON_KNIFE"] = { index = "faca", nome = "Faca", type = "equipar", peso = 5 },
	["wbody|WEAPON_DAGGER"] = { index = "adaga", nome = "Adaga", type = "equipar", peso = 5 },
	["wbody|WEAPON_KNUCKLE"] = { index = "ingles", nome = "Soco-Inglês", type = "equipar", peso = 5 },
	["wbody|WEAPON_MACHETE"] = { index = "machete", nome = "Machete", type = "equipar", peso = 5 },
	["wbody|WEAPON_SWITCHBLADE"] = { index = "canivete", nome = "Canivete", type = "equipar", peso = 5 },
	["wbody|WEAPON_WRENCH"] = { index = "grifo", nome = "Chave de Grifo", type = "equipar", peso = 5 },
	["wbody|WEAPON_HAMMER"] = { index = "martelo", nome = "Martelo", type = "equipar", peso = 5 },
	["wbody|WEAPON_GOLFCLUB"] = { index = "golf", nome = "Taco de Golf", type = "equipar", peso = 5 },
	["wbody|WEAPON_CROWBAR"] = { index = "cabra", nome = "Pé de Cabra", type = "equipar", peso = 5 },
	["wbody|WEAPON_HATCHET"] = { index = "machado", nome = "Machado", type = "equipar", peso = 5 },
	["wbody|WEAPON_FLASHLIGHT"] = { index = "lanterna", nome = "Lanterna", type = "equipar", peso = 5 },
	["wbody|WEAPON_BAT"] = { index = "beisebol", nome = "Taco de Beisebol", type = "equipar", peso = 5 },
	["wbody|WEAPON_BOTTLE"] = { index = "garrafa", nome = "Garrafa", type = "equipar", peso = 5 },
	["wbody|WEAPON_BATTLEAXE"] = { index = "batalha", nome = "Machado de Batalha", type = "equipar", peso = 5 },
	["wbody|WEAPON_POOLCUE"] = { index = "sinuca", nome = "Taco de Sinuca", type = "equipar", peso = 5 },
	["wbody|WEAPON_STONE_HATCHET"] = { index = "pedra", nome = "Machado de Pedra", type = "equipar", peso = 5 },
	["wbody|WEAPON_NIGHTSTICK"] = { index = "cassetete", nome = "Cassetete", type = "equipar", peso = 5 },
	["wbody|WEAPON_APPISTOL"] = { index = "appistol", nome = "AP Pistol", type = "equipar", peso = 5 },
	["wbody|WEAPON_COMBATPISTOL"] = { index = "glock", nome = "Glock 19", type = "equipar", peso = 5 },
	["wbody|WEAPON_PISTOL_MK2"] = { index = "fiveseven", nome = "Five Seven", type = "equipar", peso = 5 },
	["wbody|WEAPON_PISTOL"] = { index = "m19", nome = "M19", type = "equipar", peso = 5 },
	["wbody|WEAPON_SNSPISTOL"] = { index = "pistolhk", nome = "Pistol HK", type = "equipar", peso = 5 },
	["wbody|WEAPON_STUNGUN"] = { index = "taser", nome = "Taser", type = "equipar", peso = 5 },
	["wbody|WEAPON_RAYPISTOL"] = { index = "raypistol", nome = "Ray Pistol", type = "equipar", peso = 5 },
	["wbody|WEAPON_HEAVYSNIPER"] = { index = "sniper2", nome = "Sniper2", type = "equipar", peso = 5  },
	["wbody|WEAPON_HEAVYSNIPER_MK2"] = { index = "snipermk2", nome = "SniperMK2", type = "equipar", peso = 5  },
	["wbody|WEAPON_ASSAULTRIFLE"] = { index = "ak47", nome = "AK-47", type = "equipar", peso = 5 },
	["wbody|WEAPON_MICROSMG"] = { index = "usi", nome = "USI", type = "equipar", peso = 5 },
	["wbody|WEAPON_SMG"] = { index = "mp5", nome = "MP5", type = "equipar", peso = 5 },
	["wbody|WEAPON_MACHINEPISTOL"] = { index = "tec9", nome = "Tec-9", type = "equipar", peso = 5 },
	["wbody|WEAPON_PUMPSHOTGUN_MK2"] = { index = "remington", nome = "Remington 870", type = "equipar", peso = 5 },
	["wbody|WEAPON_MUSKET"] = { index = "winchester22", nome = "Winchester 22", type = "equipar", peso = 5 },
	["wbody|WEAPON_REVOLVER"] = { index = "magnun", nome = "Magnun", type = "equipar", peso = 5 },
	["wbody|WEAPON_REVOLVER_MK2"] = { index = "magnunmk2", nome = "Magnun MK2", type = "equipar", peso = 5 },
	["wbody|WEAPON_ASSAULTSMG"] = { index = "mtar21", nome = "MTar-21", type = "equipar", peso = 5 },
	["wbody|WEAPON_GUSENBERG"] = { index = "tompsom", nome = "Tompsom", type = "equipar", peso = 5 },
	["wbody|WEAPON_ASSAULTRIFLE_MK2"] = { index = "akmk2", nome = "AK-47 MK2", type = "equipar", peso = 5 },
	["wbody|WEAPON_SPECIALCARBINE"] = { index = "m4spec", nome = "M4 SPEC", type = "equipar", peso = 5 },
	["wbody|WEAPON_SPECIALCARBINE_MK2"] = { index = "m4specmk2", nome = "M4 SPEC MK2", type = "equipar", peso = 5 },
	["wbody|WEAPON_CARBINERIFLE"] = { index = "m4a4", nome = "M4A4", type = "equipar", peso = 5 },
	["wbody|WEAPON_CARBINERIFLE_MK2"] = { index = "m4a4mk2", nome = "M4A4-Mk2", type = "equipar", peso = 5 },
	["wbody|WEAPON_SNIPERRIFLE"] = { index = "sniper", nome = "Sniper", type = "equipar", peso = 5 },
	["wbody|WEAPON_RPG"] = { index = "rpg", nome = "RPG", type = "equipar", peso = 5 },
	["wbody|WEAPON_MINIGUN"] = { index = "minigun", nome = "Minigun", type = "equipar", peso = 5 },
	["wbody|WEAPON_FIREWORK"] = { index = "firework", nome = "FireWork", type = "equipar", peso = 5 },
	["wbody|WEAPON_SNOWBALL"] = { index = "snowball", nome = "Snowball", type = "equipar", peso = 5 },
	["wbody|WEAPON_COMBATPDW"] = { index = "sigsauer", nome = "Sig Sauer", type = "equipar", peso = 5 },
	["wammo|WEAPON_SNOWBALL"] = { index = "m-snowball", nome = "M.Snowball", type = "equipar", peso = 0.1 },
	["wammo|WEAPON_FLARE"] = { index = "m-sinalizador", nome = "M.Sinalizador", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_COMBATPDW"] = { index = "m-sigsauer", nome = "M.Sig Sauer", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_FIREEXTINGUISHER"] = { index = "m-extintor", nome = "M.Extintor", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_COMBATPISTOL"] = { index = "m-glock", nome = "M.Glock 19", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_PISTOL_MK2"] = { index = "m-fiveseven", nome = "M.Five Seven", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_PISTOL"] = { index = "m-m19", nome = "M. M19", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_SNSPISTOL"] = { index = "m-pistolhk", nome = "M.Pistol HK", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_ASSAULTRIFLE"] = { index = "m-ak47", nome = "M.AK47", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_CARBINERIFLE"] = { index = "m-m4a4", nome = "M.M4A4", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_CARBINERIFLE_MK2"] = { index = "m-m4a4mk2", nome = "M.M4A4 Mk2", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_SPECIALCARBINE"] = { index = "m-m4spec", nome = "M.M4 Spec", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_SPECIALCARBINE_MK2"] = { index = "m-m4spec-mk2", nome = "M.M4 Spec MK2", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_STUNGUN"] = { index = "m-taser", nome = "M.Taser", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_SMG"] = { index = "m-mp5", nome = "M.MP5", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_MICROSMG"] = { index = "m-uzi", nome = "M.UZI", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_MACHINEPISTOL"] = { index = "m-tec9", nome = "M.TEC-9", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_PUMPSHOTGUN_MK2"] = { index = "m-remington", nome = "M.Remington 870", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_MUSKET"] = { index = "m-winchester22", nome = "M.Winchester 22", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_REVOLVER"] = { index = "m-magnun", nome = "M.Magnun", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_REVOLVER_MK2"] = { index = "m-magnunmk2", nome = "M.MagnunMK2", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_ASSAULTSMG"] = { index = "m-mtar21", nome = "M.MTar-21", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_GUSENBERG"] = { index = "m-tompsom", nome = "M.Tompsom", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_ASSAULTRIFLE_MK2"] = { index = "m-akmk2", nome = "M.AK-47 MK2", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_SNIPERRIFLE"] = { index = "m-sniper", nome = "M.SNIPER", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_RPG"] = { index = "m-rpg", nome = "M.RPG", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_FIREWORK"] = { index = "m-firework", nome = "M.FireWork", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_PETROLCAN"] = { index = "combustivel", nome = "Combustível", type = "recarregar", peso = 0.1 },
	["wammo|WEAPON_STICKYBOMB"] = { index = "m-bombaadesiva", nome = "M.Bomba Adesiva", type = "equipar", peso = 0.1 },
}

return config