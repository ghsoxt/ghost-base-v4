local cfg = {}
cfg.GeneralConfig = {    
    config = {
        ['configCloakRoom'] = {
            type = 'cloakRoom', -- não alterar
            input = 'cloakRoom', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'CloakRoom', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            cloakConfig = {
                permRetirar = true,
                pressets = {
                    ['M'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "", -- permissão para usar este presset
                            name = "Presset1", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {10,0,0},
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "Presset2", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {15,0,0},
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = {"policia.permissao", "policia2.permissao"}, -- permissão para usar este presset
                            name = "Presset3", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {50,0,0},
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "", -- permissão para usar este presset
                            name = "Presset4", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {100,0,0},
                            }
                        }
                    },
                    ['F'] = {

                    }
                }    
            }           
        },


        ['configCloakRoom2'] = {
            type = 'cloakRoom', -- não alterar
            input = 'cloakRoom', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'CloakRoom', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            cloakConfig = {
                permRetirar = true,
                pressets = {
                    ['M'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "", -- permissão para usar este presset
                            name = "Presset1", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {150,0,0},
                                [5] = {5,0,0}
                            }
                        },
                    },
                    ['F'] = {

                    }
                }    
            }           
        },
    },

        {showBlip = true, coord = vector3(-940.75,-2084.38,9.3), heading = 328.82, config = 'configCloakRoom'},
        {showBlip = true, coord = vector3(-907.69,-2038.53,9.41), heading = 359.29, config = 'configCloakRoom2'},        
    }
  
    
}

return cfg