cfg = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- START FARM
-----------------------------------------------------------------------------------------------------------------------------------------
cfg.StartCoords = {  
    -- ARMAS 
    { type = "Cartel", perm = "carteldemedelin.permissao", coords = vector3(-1896.16,2053.62,140.98), blipname = "Coletar"},--OK  
    { type = "Bratva", perm = "bratva.permissao", coords = vector3(399.19,-18.33,91.94), blipname = "Coletar"},--OK  
    --- MUNIÇÃO
    { type = "Yakuza", perm = "yakuza.permissao", coords = vector3(-924.15,-1467.24,5.91), blipname = "Coletar"}, -- ok
    { type = "Triade", perm = "triade.permissao", coords = vector3(-2671.84,1312.41,147.45), blipname = "Coletar"}, --OK  
    ---- Drogas
    { type = "Colombia", perm = "colombia.permissao", coords = vector3(1580.16,-2070.52,77.28), blipname = "Coletar" }, -- cocaina -- OK
    { type = "Canada", perm = "canada.permissao", coords = vector3(2898.69,2716.32,72.53), blipname = "Coletar"}, -- lsd -- OK
    { type = "Grota", perm = "grota.permissao", coords = vector3(1280.39,-242.88,97.74), blipname = "Coletar"}, -- maconha  -- OK  
    { type = "Turquia", perm = "turquia.permissao", coords = vector3(1364.9,-755.55,67.3), blipname = "Coletar"}, -- maconha  -- OK  
    { type = "Franca", perm = "franca.permissao", coords = vector3(1716.09,-81.3,178.33), blipname = "Coletar"}, -- cocaina -- OK
    { type = "Egito", perm = "egito.permissao", coords = vector3(-1524.3,4920.12,67.29), blipname = "Coletar"}, -- lsd -- OK
    -- contrabando 
    { type = "Camorra", perm = "camorra.permissao", coords = vector3(-2612.08,1688.46,141.87), blipname = "Coletar"}, -- OK
    { type = "Tequila", perm = "tequila.permissao", coords = vector3(-552.13,278.15,82.18), blipname = "Coletar"}, -- OK
     -- desmanche
    { type = "Hells", perm = "hells.permissao", coords = vector3(473.58,-1313.57,29.21), blipname = "Coletar"}, -- OK
    { type = "Motoclub", perm = "motoclub.permissao", coords = vector3(960.3,-122.0,74.36), blipname = "Coletar"},  -- OK  

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FARM LOCATION
-----------------------------------------------------------------------------------------------------------------------------------------
cfg.FarmLocs = {
    Colombia = {
        [1] = { coords = vector3(1164.84,-319.68,69.21) }, 
        [2] = { coords = vector3(-705.63,-910.6,19.22) }, 
        [3] = { coords = vector3(-44.47,-1756.21,29.43) },
        [4] = { coords = vector3(-1821.66,796.82,138.09) },
        [5] = { coords = vector3(1130.28,-979.64,46.42) }, 
        [6] = { coords = vector3(-1481.38,-377.87,40.17) }, 
        [7] = { coords = vector3(-1222.79,-913.09,12.33) }, 
        [8] = { coords = vector3(2548.96,382.41,108.63) }, 
        [9] = { coords = vector3(-3044.71,587.26,7.91), final = true },
    },
    Canada = {
        [1] = { coords = vector3(1164.84,-319.68,69.21) }, 
        [2] = { coords = vector3(-705.63,-910.6,19.22) }, 
        [3] = { coords = vector3(-44.47,-1756.21,29.43) },
        [4] = { coords = vector3(-1821.66,796.82,138.09) },
        [5] = { coords = vector3(1130.28,-979.64,46.42) }, 
        [6] = { coords = vector3(-1481.38,-377.87,40.17) }, 
        [7] = { coords = vector3(-1222.79,-913.09,12.33) }, 
        [8] = { coords = vector3(2548.96,382.41,108.63) }, 
        [9] = { coords = vector3(-3044.71,587.26,7.91), final = true },
    },
    Motoclub = {
        [1] = { coords = vector3(-1188.1,-1786.1,4.38) },
        [2] = { coords = vector3(-1576.3,-927.83,5.79) },
        [3] = { coords = vector3(-1643.57,259.67,55.89) },
        [4] = { coords = vector3(-3040.54,91.9,8.73) },
        [5] = { coords = vector3(-2554.67,2306.2,33.23) },
        [6] = { coords = vector3(159.53,6358.55,27.92) },
        [7] = { coords = vector3(3431.06,3746.19,27.02) },
        [8] = { coords = vector3(1763.58,-1618.08,112.65) },
        [9] = { coords = vector3(1543.35,811.52,78.61) },
        [10] = { coords = vector3(264.12,-3071.51,5.89),final = true  },
    },
    Turquia = {
        [1] = { coords = vector3(-1576.3,-927.83,5.79) },
      [2] = { coords = vector3(-1643.57,259.67,55.89) },
        [3] = { coords = vector3(-3040.54,91.9,8.73) },
        [4] = { coords = vector3(-2554.67,2306.2,33.23) },
        [5] = { coords = vector3(159.53,6358.55,27.92) },
        [6] = { coords = vector3(3431.06,3746.19,27.02) },
        [7] = { coords = vector3(1763.58,-1618.08,112.65) },
        [8] = { coords = vector3(1543.35,811.52,78.61) },
        [9] = { coords = vector3(264.12,-3071.51,5.89),final = true  },
    },
    Cartel = {
        [1] = { coords = vector3(-1188.1,-1786.1,4.38) },
        [2] = { coords = vector3(-1576.3,-927.83,5.79) },
        [3] = { coords = vector3(-1643.57,259.67,55.89) },
        [4] = { coords = vector3(-3040.54,91.9,8.73) },
        [5] = { coords = vector3(-2554.67,2306.2,33.23) },
        [6] = { coords = vector3(159.53,6358.55,27.92) },
        [7] = { coords = vector3(3431.06,3746.19,27.02) },
        [8] = { coords = vector3(1763.58,-1618.08,112.65) },
        [9] = { coords = vector3(1543.35,811.52,78.61) },
        [10] = { coords = vector3(264.12,-3071.51,5.89),final = true  },
    },
    Hells = {
        [1] = { coords = vector3(-1188.1,-1786.1,4.38) },
        [2] = { coords = vector3(-1576.3,-927.83,5.79) },
        [3] = { coords = vector3(-1643.57,259.67,55.89) },
        [4] = { coords = vector3(-3040.54,91.9,8.73) },
        [5] = { coords = vector3(-2554.67,2306.2,33.23) },
        [6] = { coords = vector3(159.53,6358.55,27.92) },
        [7] = { coords = vector3(3431.06,3746.19,27.02) },
        [8] = { coords = vector3(1763.58,-1618.08,112.65) },
        [9] = { coords = vector3(1543.35,811.52,78.61) },
        [10] = { coords = vector3(264.12,-3071.51,5.89),final = true  },
    },
    Camorra = {
        [1] = { coords = vector3(32.02,-100.69,56.01) },
        [2] = { coords = vector3(1459.2,-1930.63,71.81) }, 
        [3] = { coords = vector3(814.87,-109.61,80.61) },
        [4] = { coords = vector3(614.47,2784.22,43.49) },
        [5] = { coords = vector3(-3238.53,922.25,13.96) }, 
        [6] = { coords = vector3(133.73,-2203.36,7.19), final = true },
    },
    Tequila = {
        [1] = { coords = vector3(32.02,-100.69,56.01) },
        [2] = { coords = vector3(1459.2,-1930.63,71.81) }, 
        [3] = { coords = vector3(814.87,-109.61,80.61) },
        [4] = { coords = vector3(614.47,2784.22,43.49) },
        [5] = { coords = vector3(-3238.53,922.25,13.96) }, 
        [6] = { coords = vector3(133.73,-2203.36,7.19), final = true },
    },
    Triade = {
        [1] = { coords = vector3(32.02,-100.69,56.01) }, 
        [2] = { coords = vector3(1459.2,-1930.63,71.81) }, 
        [3] = { coords = vector3(814.87,-109.61,80.61) }, 
        [4] = { coords = vector3(614.47,2784.22,43.49) },
        [5] = { coords = vector3(-3238.53,922.25,13.96) },
        [6] = { coords = vector3(133.73,-2203.36,7.19), final = true },
    },
    Yakuza = {
        [1] = { coords = vector3(32.02,-100.69,56.01) }, 
        [2] = { coords = vector3(1459.2,-1930.63,71.81) }, 
        [3] = { coords = vector3(814.87,-109.61,80.61) }, 
        [4] = { coords = vector3(614.47,2784.22,43.49) },
        [5] = { coords = vector3(-3238.53,922.25,13.96) }, 
        [6] = { coords = vector3(133.73,-2203.36,7.19), final = true },
    }, 
    Grota = {
        [1] = { coords = vector3(977.0,16.0,80.99) }, 
        [2] = { coords = vector3(572.99,-2573.01,6.4) }, 
        [3] = { coords = vector3(185.82,1213.4,225.6) }, 
        [4] = { coords = vector3(-1615.0,2805.0,18.02) },
        [5] = { coords = vector3(2439.0,4068.0,38.07) }, 
        [6] = { coords = vector3(-1130.0,2692.0,18.8) }, 
        [7] = { coords = vector3(1194.0,2722.0,38.62) }, 
        [8] = { coords = vector3(3600.0,3658.0,33.87) }, 
        [9] = { coords = vector3(2545.0,374.01,108.62) }, 
        [10] = { coords = vector3(1129.01,-989.99,45.97), final = true },
    },
    Bratva = {
        [1] = { coords = vector3(977.0,16.0,80.99) }, 
        [2] = { coords = vector3(572.99,-2573.01,6.4) }, 
        [3] = { coords = vector3(185.82,1213.4,225.6) }, 
        [4] = { coords = vector3(-1615.0,2805.0,18.02) },
        [5] = { coords = vector3(2439.0,4068.0,38.07) }, 
        [6] = { coords = vector3(-1130.0,2692.0,18.8) }, 
        [7] = { coords = vector3(1194.0,2722.0,38.62) }, 
        [8] = { coords = vector3(3600.0,3658.0,33.87) }, 
        [9] = { coords = vector3(2545.0,374.01,108.62) }, 
        [10] = { coords = vector3(1129.01,-989.99,45.97), final = true },
    },
    Egito = {
        [1] = { coords = vector3(1381.92,-1544.70,57.10) },
        [2] = { coords = vector3(1229.23,-730.73,60.66) },
        [3] = { coords = vector3(1899.12,3781.42,32.87) },
        [4] = { coords = vector3(1385.50,3659.51,34.92) },
        [5] = { coords = vector3(1673.81,4658.25,43.38) },
        [6] = { coords = vector3(2564.87,4680.44,34.08) },
        [7] = { coords = vector3(2393.57,3321.65,47.71) },
        [8] = { coords = vector3(2352.64,2523.22,47.68) },
        [9] = { coords = vector3(-9.18,6653.56,31.25) },
        [10] = { coords = vector3(-96.82,6324.25,31.57) },
        [11] = { coords = vector3(-3205.48,1152.44,9.66) },
        [12] = { coords = vector3(-3082.67,407.01,6.97) },
        [13] = { coords = vector3(-1931.91,162.48,84.65) },
        [14] = { coords = vector3(-1369.16,-136.26,49.57) },
        [15] = { coords = vector3(-1876.90,-584.35,11.85) },
        [16] = { coords = vector3(-1113.86,-1193.78,2.37) },
        [17] = { coords = vector3(-1.96,-1442.09,30.96) },
        [18] = { coords = vector3(130.39,-1853.16,25.23) },
        [19] = { coords = vector3(1289.37,-1710.45,55.47) },
        [20] = { coords = vector3(123.95,64.71,79.74), final = true },
    },
    Franca = {
        [1] = { coords = vector3(32.02,-100.69,56.01) }, 
        [2] = { coords = vector3(1459.2,-1930.63,71.81) }, 
        [3] = { coords = vector3(814.87,-109.61,80.61) }, 
        [4] = { coords = vector3(614.47,2784.22,43.49) },
        [5] = { coords = vector3(-3238.53,922.25,13.96) }, 
        [6] = { coords = vector3(133.73,-2203.36,7.19), final = true },
    },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FARM ITEMS
-----------------------------------------------------------------------------------------------------------------------------------------
cfg.FarmItems = {
    Colombia = {
        item = { item = "folhadecoca", a1 = 4, a2 = 5, item2 = "pastadecoca", a3 = 4, a4 = 5, item3 = "kevlar", a5 = 0, a6 = 0, times = 5 }, -- OK COCAINA
    },
    Canada = {
        item = { item = "fungos", a1 = 4, a2 = 5, item2 = "acido-lisergico", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 5 }, -- OK LSD
    },
    Motoclub = {
        item = { item = "fio", a1 = 4, a2 = 5, item2 = "aluminio", a3 = 4, a4 = 5, item3 = "relogio", a5 = 0, a6 = 0, times = 10 }, -- OK DESMANCHE
    },
    Turquia = {
        item = { item = "fertilizante", a1 = 4, a2 = 5, item2 = "adubo", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 },-- OK  
    },
    Cartel = {
        item = { item = "pecadearma", a1 = 4, a2 = 5, item2 = "placa-metal", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 }, --- OK ARMA
    },
    Hells = {
        item = { item = "fio", a1 = 4, a2 = 5, item2 = "aluminio", a3 = 4, a4 = 5, item3 = "relogio", a5 = 0, a6 = 0, times = 10 }, -- OK DESMANCHE
    },
    Camorra = {
        item = { item = "fio", a1 = 4, a2 = 5 , item2 = "aluminio", a3 = 4, a4 = 5, item3 = "cobre", a5 = 0, a6 = 0, times = 10 }, --OK CONTRABANDO
    },
    Tequila = {
        item = { item = "fio", a1 = 4, a2 = 5 , item2 = "aluminio", a3 = 4, a4 = 5, item3 = "cobre", a5 = 0, a6 = 0, times = 10 }, --OK CONTRABANDO
    },
    Triade = {
        item = { item = "capsulas", a1 = 4, a2 = 5, item2 = "polvora", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 }, --- OK MUNI
    },
    Yakuza = {
        item = { item = "capsulas", a1 = 4, a2 = 5, item2 = "polvora", a3 = 4, a4 = 5, item3 = "relogio", a5 = 1, a6 = 2, times = 10 },-- OK  
    },
    Grota = {
        item = { item = "fertilizante", a1 = 4, a2 = 5, item2 = "adubo", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 },-- OK  
    },
    Bratva = {
        item = { item = "pecadearma", a1 = 4, a2 = 5, item2 = "placa-metal", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 }, -- OK MACONHA
    },
    Egito = {
        item = { item = "fio", a1 = 3, a2 = 6, item2 = "cobre", a3 = 3, a4 = 6, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 }, -- OK  
    },
    Franca = {
        item = { item = "folhadecoca", a1 = 4, a2 = 5, item2 = "pastadecoca", a3 = 4, a4 = 5, item3 = "placa-metal", a5 = 0, a6 = 0, times = 10 },-- OK  
    },
}
