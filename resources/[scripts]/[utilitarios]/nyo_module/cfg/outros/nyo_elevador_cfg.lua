local cfg = {}
cfg.GeneralConfig = {    
    config = {
        ['configElevador1'] = {
            type = 'elevador', -- não alterar
            input = 'elevador', -- não alterar
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
                name = 'Elevador', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            elevadorName = "Elevador Policia",

            locs = {
                {coord = vector3(-68.358139038086,-818.08538818359,325.17510986328), heading = 359.29, name = 'Andar 01'},
                {coord = vector3(-68.612609863281,-822.60089111328,325.17510986328), heading = 359.29, name = 'Babilonia'}
            }
        },
    },

    locs = {
        {showBlip = false, coord = vector3(-68.358139038086,-818.08538818359,325.17510986328), heading = 359.29, config = 'configElevador1'},
        {showBlip = false, coord = vector3(-68.612609863281,-822.60089111328,325.17510986328), heading = 359.29, config = 'configElevador1'}
    }
  
    
}

return cfg