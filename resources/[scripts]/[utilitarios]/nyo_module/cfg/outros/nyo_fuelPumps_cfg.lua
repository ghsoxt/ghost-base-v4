local cfg = {}
cfg.GeneralConfig = {    
    
    config = {
        ['configFuelXeroC'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'xero',
                fuelPumps = {
                    {hash = -2007231801, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelXeroC2'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'xero',
                fuelPumps = {
                    {hash = -469694731, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelXeroCE'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'xero',
                fuelPumps = {
                    {hash = -2007231801, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },

        ['configFuelXeroCE2'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'xero',
                fuelPumps = {
                    {hash = -469694731, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },

        ['configFuelXeroHeli'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 38, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'xero',
                fuelPumps = {
                    {hash = -469694731, type = 'heli', price = 3.00}
                },
            }
        },

        ['configFuelOilC'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'oil',
                fuelPumps = {
                    {hash = 1339433404, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelOilCE'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'oil',
                fuelPumps = {
                    {hash = 1339433404, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },

        ['configFuelLtdC'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'ltd',
                fuelPumps = {
                    {hash = 1933174915, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelLtdC2'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'ltd',
                fuelPumps = {
                    {hash = -164877493, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelLtdCE'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'ltd',
                fuelPumps = {
                    {hash = 1933174915, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },

        ['configFuelGlobeOilC'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'globeoil',
                fuelPumps = {
                    {hash = -462817101, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelGlobeOilC2'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'globeoil',
                fuelPumps = {
                    {hash = 1694452750, type = 'car', price = 3.00}
                },
            }
        },

        ['configFuelGlobeOilCE'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'globeoil',
                fuelPumps = {
                    {hash = 1694452750, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },

        ['configFuelGlobeOilCE2'] = {
            type = 'fuel', -- não alterar
            input = 'fuel', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- não mexer
                color = {0,255,0,75}, -- não mexer
                scale = {1.0, 1.0, 1.0}, -- não mexer
                rotation = true, -- não mexer
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Posto de Combustivel C + E', -- Name to display on the map!
                blipId = 361, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 17, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            configFuel = {
                fuelBrand = 'globeoil',
                fuelPumps = {
                    {hash = -462817101, type = 'car', price = 3.00},
                    {hash = -132092731, type = 'eletrical', price = 3.00}
                },
            }
        },
    },

    locs = {
        {showBlip = true, coord = vector3(262.34,-1259.98,29.14), heading = 359.29, config = 'configFuelXeroC', id = 1},
        {showBlip = true, coord = vector3(48.36,2777.501,57.88), heading = 359.29, config = 'configFuelXeroC2', id = 2},
        {showBlip = true, coord = vector3(2004.83,3774.01,32.40), heading = 359.29, config = 'configFuelXeroC2', id = 3},
        {showBlip = true, coord = vector3(-97.75,6416.14,31.63), heading = 359.29, config = 'configFuelXeroC2', id = 4},
        {showBlip = true, coord = vector3(-526.30,-1210.94,18.18), heading = 359.29, config = 'configFuelXeroCE', id = 5},
        {showBlip = true, coord = vector3(-2096.90,-317.83,13.01), heading = 359.29, config = 'configFuelXeroCE', id = 6},
        {showBlip = true, coord = vector3(2680.04,3264.54,55.40), heading = 359.29, config = 'configFuelXeroCE2', id = 7},
        {showBlip = true, coord = vector3(-705.99,-1464.65,5.04), heading = 359.29, config = 'configFuelXeroHeli', id = 8},
        {showBlip = true, coord = vector3(-763.76,-1434.84,5.05), heading = 359.29, config = 'configFuelXeroHeli', id = 9},

        {showBlip = true, coord = vector3(174.65,-1561.59,29.26), heading = 359.29, config = 'configFuelOilC', id = 10},
        {showBlip = true, coord = vector3(817.83,-1028.31,26.28), heading = 359.29, config = 'configFuelOilC', id = 11},
        {showBlip = true, coord = vector3(-1437.64,-275.96,46.20), heading = 359.29, config = 'configFuelOilC', id = 12},
        {showBlip = true, coord = vector3(-2555.06,2333.85,33.07), heading = 359.29, config = 'configFuelOilC', id = 13},
        {showBlip = true, coord = vector3(179.90,6604.00,32.04), heading = 359.29, config = 'configFuelOilC', id = 14},
        {showBlip = true, coord = vector3(1208.77,-1402.41,35.22), heading = 359.29, config = 'configFuelOilCE', id = 15},
        {showBlip = true, coord = vector3(2581.34,362.21,108.46), heading = 359.29, config = 'configFuelOilCE', id = 16},

        {showBlip = true, coord = vector3(-66.24,-1762.22,29.25), heading = 359.29, config = 'configFuelLtdC', id = 17},
        {showBlip = true, coord = vector3(1182.01,-330.44,69.31), heading = 359.29, config = 'configFuelLtdC', id = 18},
        {showBlip = true, coord = vector3(-1800.05,804.011,138.65), heading = 359.29, config = 'configFuelLtdC', id = 19},
        {showBlip = true, coord = vector3(1690.35,4928.67,42.23), heading = 359.29, config = 'configFuelLtdC2', id = 20},
        {showBlip = true, coord = vector3(-722.32,-935.76,19.01), heading = 359.29, config = 'configFuelLtdCE', id = 21},

        {showBlip = true, coord = vector3(263.70,2608.21,44.86), heading = 359.29, config = 'configFuelGlobeOilC', id = 22},
        {showBlip = true, coord = vector3(1206.72,2659.00,37.80), heading = 359.29, config = 'configFuelGlobeOilC', id = 23},
        {showBlip = true, coord = vector3(1784.32,3330.55,41.253), heading = 359.29, config = 'configFuelGlobeOilC', id = 24},
        {showBlip = true, coord = vector3(1700.88,6416.93,32.76), heading = 359.29, config = 'configFuelGlobeOilC2', id = 25},
        {showBlip = true, coord = vector3(-315.89,-1471.24,30.54), heading = 359.29, config = 'configFuelGlobeOilCE', id = 26},
        {showBlip = true, coord = vector3(621.03,268.3,103.09), heading = 359.29, config = 'configFuelGlobeOilCE', id = 27},
        {showBlip = true, coord = vector3(1039.88,2670.57,39.55), heading = 359.29, config = 'configFuelGlobeOilCE2', id = 28},
        {showBlip = true, coord = vector3(154.54,6628.83,31.74), heading = 359.29, config = 'configFuelGlobeOilCE2', id = 29},
        
    }


}



return cfg