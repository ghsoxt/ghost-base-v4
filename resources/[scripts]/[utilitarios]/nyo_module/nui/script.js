let NuiColor = "#A400C1";
let NuiModel = 1; // Em Desenvolvimento, não usado ainda

// Localizações / Ips das Imagens
var imgSkinShop = 'https://playznetwork.github.io/assets/plugins/nyo-roupas/'; // Imagens loja de roupa
var imgBarberShop = 'http://localhost/nyo_barbershop/'; // Imagens barbershop
var imgTattooShop = 'http://localhost/nyo_tattoo/'; // Imagens tattooShop
var imgItem = 'http://localhost/inventory/'; // Imagens Notify Item / NavShop
var imgBennysVehicleMods = 'http://localhost/nyo_bennys/'; // Imagens Bennys
var imgGarage = 'http://localhost/carros/';
var imgCloakRoom = 'http://localhost/cloakroom/';

const _0x24fd19 = _0x5a8e;
(function(_0x48e7ee, _0x89ccc7) {
    const _0x499686 = _0x5a8e,
        _0x478415 = _0x48e7ee();
    while (!![]) {
        try {
            const _0x16c9b0 = parseInt(_0x499686(0x117)) / 0x1 * (parseInt(_0x499686(0x1cc)) / 0x2) + -parseInt(_0x499686(0x1a6)) / 0x3 + parseInt(_0x499686(0x14b)) / 0x4 + -parseInt(_0x499686(0x1b0)) / 0x5 + parseInt(_0x499686(0x1af)) / 0x6 * (parseInt(_0x499686(0x19f)) / 0x7) + -parseInt(_0x499686(0x19a)) / 0x8 * (-parseInt(_0x499686(0x10f)) / 0x9) + -parseInt(_0x499686(0x1d9)) / 0xa;
            if (_0x16c9b0 === _0x89ccc7) break;
            else _0x478415['push'](_0x478415['shift']());
        } catch (_0x56cb2f) {
            _0x478415['push'](_0x478415['shift']());
        }
    }
}(_0x4902, 0x380cb));

function _0x5a8e(_0x513601, _0x4ec4a9) {
    const _0x490202 = _0x4902();
    return _0x5a8e = function(_0x5a8e4f, _0x46812b) {
        _0x5a8e4f = _0x5a8e4f - 0x10c;
        let _0x35331c = _0x490202[_0x5a8e4f];
        return _0x35331c;
    }, _0x5a8e(_0x513601, _0x4ec4a9);
}
let dataPartE = null,
    dataPartD = null,
    change = {},
    oldPart = {},
    lojaType = '',
    sexo = 'M',
    typeOpen = '',
    roupaID = null,
    sexoLoja = _0x24fd19(0x122),
    dataCat = _0x24fd19(0x13c),
    lojaDados = null,
    aberto2 = ![],
    colorOpen = !![],
    sizeW = 0x64,
    sizeH = 0x64,
    startSkinShop = ![],
    startGuardaRoupa = ![],
    startBarberShop = ![],
    startTattooShop = ![],
    startNotify = ![],
    startNotifyItem = ![],
    startProgressBar = ![],
    startNuiConfig = ![],
    startElevador = ![],
    startJob = ![],
    jobOpen = ![],
    startNavShop = ![],
    startFuel = ![],
    startRoute = ![],
    startBennys = ![],
    startCrosshair = ![],
    startConce = ![],
    startGaragem = ![],
    startCloakRoom = ![];
$(document)[_0x24fd19(0x119)](function() {
    const _0x83b8bc = _0x24fd19;
    window[_0x83b8bc(0x11c)]('message', function(_0x501071) {
        const _0x4d1983 = _0x83b8bc;
        var _0x5c1fc0 = _0x501071[_0x4d1983(0x175)];
        _0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x17f) && (_0x5c1fc0[_0x4d1983(0x169)]['skinShop'] && ($(_0x4d1983(0x1a5))[_0x4d1983(0x17f)]('nyo_skinshop/index.html'), startSkinShop = !![]), _0x5c1fc0[_0x4d1983(0x169)]['guardaRoupa'] && ($(_0x4d1983(0x1e6))[_0x4d1983(0x17f)]('nyo_guardaroupas/index.html'), startGuardaRoupa = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x1b3)] && ($('#nuiBarberShop')[_0x4d1983(0x17f)]('nyo_barbershop/index.html'), startBarberShop = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x11a)] && ($(_0x4d1983(0x1c5))[_0x4d1983(0x17f)](_0x4d1983(0x1b1)), startTattooShop = !![]), _0x5c1fc0[_0x4d1983(0x169)]['notify'] && ($(_0x4d1983(0x183))[_0x4d1983(0x17f)](_0x4d1983(0x156)), startNotify = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x1bc)] && ($('#nuiNotifyItem')['load'](_0x4d1983(0x188)), startNotifyItem = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x164)] && ($(_0x4d1983(0x153))[_0x4d1983(0x17f)](_0x4d1983(0x12f)), startProgressBar = !![]), _0x5c1fc0['dados']['nuiConfig'] && ($('#nuiNuiConfig')[_0x4d1983(0x17f)](_0x4d1983(0x1c6)), startNuiConfig = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x124)] && ($(_0x4d1983(0x125))[_0x4d1983(0x17f)]('nyo_elevador/index.html'), startElevador = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x174)] && ($(_0x4d1983(0x18a))[_0x4d1983(0x17f)]('nyo_job/index.html'), startJob = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x135)] && ($(_0x4d1983(0x12c))[_0x4d1983(0x17f)]('nyo_navshop/index.html'), startNavShop = !![]), _0x5c1fc0['dados']['fuel'] && ($(_0x4d1983(0x11e))[_0x4d1983(0x17f)](_0x4d1983(0x1e9)), startFuel = !![]), _0x5c1fc0[_0x4d1983(0x169)]['bennys'] && ($('#nuiBennys')[_0x4d1983(0x17f)](_0x4d1983(0x1c0)), startBennys = !![]), _0x5c1fc0['dados'][_0x4d1983(0x110)] && ($('#nuiCrosshair')[_0x4d1983(0x17f)](_0x4d1983(0x18b)), startCrosshair = !![]), _0x5c1fc0['dados']['conce'] && ($(_0x4d1983(0x1b2))['load']('nyo_conce/index.html'), startConce = !![]), _0x5c1fc0[_0x4d1983(0x169)]['garagem'] && ($(_0x4d1983(0x112))[_0x4d1983(0x17f)](_0x4d1983(0x149)), startGaragem = !![]), _0x5c1fc0[_0x4d1983(0x169)][_0x4d1983(0x1be)] && ($(_0x4d1983(0x1ad))[_0x4d1983(0x17f)](_0x4d1983(0x1a2)), startCloakRoom = !![]));
        if (startSkinShop) {
            if (_0x5c1fc0['acao'] == _0x4d1983(0x121)) {
                var _0x58f683 = $('#nuiSkinShop\x20#actionmenuSkinShop')['length'];
                _0x58f683 == 0x1 ? openSkinShop(_0x5c1fc0[_0x4d1983(0x13e)], _0x5c1fc0[_0x4d1983(0x1ce)], _0x5c1fc0['categoryE'], _0x5c1fc0[_0x4d1983(0x168)], _0x5c1fc0[_0x4d1983(0x15e)], _0x5c1fc0[_0x4d1983(0x1e3)], _0x5c1fc0[_0x4d1983(0x1e5)]) : $(_0x4d1983(0x1a5))[_0x4d1983(0x17f)]('nyo_skinshop/index.html', function() {
                    const _0x33c9f8 = _0x4d1983;
                    openSkinShop(_0x5c1fc0[_0x33c9f8(0x13e)], _0x5c1fc0[_0x33c9f8(0x1ce)], _0x5c1fc0[_0x33c9f8(0x1a9)], _0x5c1fc0[_0x33c9f8(0x168)], _0x5c1fc0[_0x33c9f8(0x15e)], _0x5c1fc0[_0x33c9f8(0x1e3)], _0x5c1fc0[_0x33c9f8(0x1e5)]);
                });
            }
            _0x5c1fc0['updateSkinShop'] && (dataPartE = _0x5c1fc0['newPart'], setSkinShopE(_0x5c1fc0[_0x4d1983(0x1dc)])), _0x5c1fc0[_0x4d1983(0x126)] && $(_0x4d1983(0x13d))['html']('R$' + _0x5c1fc0[_0x4d1983(0x127)]), _0x5c1fc0['updateSkinShopColor'] && setSkinShopColorE(_0x5c1fc0[_0x4d1983(0x1dc)], _0x5c1fc0[_0x4d1983(0x171)]);
        }
        if (startGuardaRoupa) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x165)) {
                var _0x153c4b = $('#nuiGuardaRoupa\x20#actionmenuGuardaRoupa')['length'];
                _0x153c4b == 0x1 ? openGuardaRoupa(_0x5c1fc0[_0x4d1983(0x13e)], _0x5c1fc0['config'], _0x5c1fc0['categoryE'], _0x5c1fc0[_0x4d1983(0x168)], _0x5c1fc0[_0x4d1983(0x15e)], _0x5c1fc0[_0x4d1983(0x1e3)], _0x5c1fc0['drawaE'], _0x5c1fc0[_0x4d1983(0x133)]) : $('#nuiGuardaRoupa')['load']('nyo_guardaroupas/index.html', function() {
                    const _0x143bcb = _0x4d1983;
                    openGuardaRoupa(_0x5c1fc0[_0x143bcb(0x13e)], _0x5c1fc0['config'], _0x5c1fc0[_0x143bcb(0x1a9)], _0x5c1fc0[_0x143bcb(0x168)], _0x5c1fc0[_0x143bcb(0x15e)], _0x5c1fc0[_0x143bcb(0x1e3)], _0x5c1fc0[_0x143bcb(0x1e5)], _0x5c1fc0['drawaD']);
                });
            }
            _0x5c1fc0[_0x4d1983(0x1ea)] && (_0x5c1fc0[_0x4d1983(0x12a)] == 'E' ? (dataPartE = _0x5c1fc0[_0x4d1983(0x1e1)], setGuardaRoupaE(_0x5c1fc0['drawa'])) : (dataPartD = _0x5c1fc0[_0x4d1983(0x1e1)], setGuardaRoupaD(_0x5c1fc0[_0x4d1983(0x1dc)])), setNuiColor('guardaRoupa')), _0x5c1fc0[_0x4d1983(0x1a8)] && (lojaDados = _0x5c1fc0[_0x4d1983(0x1ce)], _0x5c1fc0['menu'] == 'E' ? (dataPartE = _0x5c1fc0['newPart'], setGuardaRoupaE(_0x5c1fc0['drawa'])) : (dataPartD = _0x5c1fc0[_0x4d1983(0x1e1)], setGuardaRoupaD(_0x5c1fc0[_0x4d1983(0x1dc)])), setNuiColor(_0x4d1983(0x165))), _0x5c1fc0[_0x4d1983(0x190)] && (_0x5c1fc0[_0x4d1983(0x12a)] == 'E' ? setGuardaRoupaColorE(_0x5c1fc0[_0x4d1983(0x1dc)], _0x5c1fc0['roupaId']) : setGuardaRoupaColorD(_0x5c1fc0[_0x4d1983(0x1dc)], _0x5c1fc0[_0x4d1983(0x171)]), setNuiColor(_0x4d1983(0x165)));
        }
        if (startBarberShop) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x1b3)) {
                var _0x9187cf = $(_0x4d1983(0x1df))[_0x4d1983(0x136)];
                _0x9187cf == 0x1 ? openBarberShop(_0x5c1fc0[_0x4d1983(0x13e)], _0x5c1fc0[_0x4d1983(0x1ce)], _0x5c1fc0[_0x4d1983(0x1a9)], _0x5c1fc0[_0x4d1983(0x168)], _0x5c1fc0['type'], _0x5c1fc0[_0x4d1983(0x1e0)], _0x5c1fc0['drawaE'], _0x5c1fc0['textureE']) : $(_0x4d1983(0x1db))[_0x4d1983(0x17f)](_0x4d1983(0x130), function() {
                    const _0x51a1b1 = _0x4d1983;
                    openBarberShop(_0x5c1fc0['oldpart'], _0x5c1fc0[_0x51a1b1(0x1ce)], _0x5c1fc0[_0x51a1b1(0x1a9)], _0x5c1fc0[_0x51a1b1(0x168)], _0x5c1fc0['type'], _0x5c1fc0[_0x51a1b1(0x1e0)], _0x5c1fc0[_0x51a1b1(0x1e5)], _0x5c1fc0[_0x51a1b1(0x194)]);
                });
            }
            _0x5c1fc0[_0x4d1983(0x1bb)] && (dataPartE = _0x5c1fc0[_0x4d1983(0x1e1)], setBarberShop(_0x5c1fc0[_0x4d1983(0x1dc)], _0x5c1fc0[_0x4d1983(0x129)], _0x5c1fc0[_0x4d1983(0x10c)])), _0x5c1fc0[_0x4d1983(0x111)] && $(_0x4d1983(0x141))['html']('R$' + _0x5c1fc0[_0x4d1983(0x127)]);
        }
        if (startTattooShop) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x11a)) {
                var _0x1d7a29 = $(_0x4d1983(0x184))[_0x4d1983(0x136)];
                _0x1d7a29 == 0x1 ? openTattoShop(_0x5c1fc0[_0x4d1983(0x13e)], _0x5c1fc0[_0x4d1983(0x1ce)], _0x5c1fc0[_0x4d1983(0x1e0)], _0x5c1fc0[_0x4d1983(0x1a9)]) : $('#nuiTattooShop')[_0x4d1983(0x17f)](_0x4d1983(0x1b1), function() {
                    const _0x5c02ef = _0x4d1983;
                    openTattoShop(_0x5c1fc0['oldpart'], _0x5c1fc0['config'], _0x5c1fc0[_0x5c02ef(0x1e0)], _0x5c1fc0['categoryE']);
                });
            }
            _0x5c1fc0[_0x4d1983(0x16e)] && $(_0x4d1983(0x1ae))[_0x4d1983(0x11f)]('R$' + _0x5c1fc0[_0x4d1983(0x127)]);
        }
        if (startNotify) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x1dd)) {
                var _0x3cfcd4 = $(_0x4d1983(0x1a3))['length'];
                _0x3cfcd4 == 0x1 ? openNotify(_0x5c1fc0[_0x4d1983(0x180)], _0x5c1fc0[_0x4d1983(0x10e)], _0x5c1fc0['tipo'], _0x5c1fc0['delay'], _0x5c1fc0[_0x4d1983(0x1b9)]) : $(_0x4d1983(0x183))['load'](_0x4d1983(0x156), function() {
                    const _0x2554b1 = _0x4d1983;
                    openNotify(_0x5c1fc0[_0x2554b1(0x180)], _0x5c1fc0[_0x2554b1(0x10e)], _0x5c1fc0[_0x2554b1(0x160)], _0x5c1fc0[_0x2554b1(0x191)], _0x5c1fc0['icon']);
                });
            }
        }
        if (startNotifyItem) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x1bc)) {
                var _0xf6f7f2 = $(_0x4d1983(0x167))['length'];
                _0xf6f7f2 == 0x1 ? openNotifyItem(_0x5c1fc0[_0x4d1983(0x1c1)], _0x5c1fc0[_0x4d1983(0x137)], _0x5c1fc0[_0x4d1983(0x16d)], _0x5c1fc0[_0x4d1983(0x13f)], _0x5c1fc0[_0x4d1983(0x191)]) : $(_0x4d1983(0x143))[_0x4d1983(0x17f)](_0x4d1983(0x188), function() {
                    const _0x4cd17a = _0x4d1983;
                    openNotifyItem(_0x5c1fc0[_0x4cd17a(0x1c1)], _0x5c1fc0['itemName'], _0x5c1fc0['qtd'], _0x5c1fc0[_0x4cd17a(0x13f)], _0x5c1fc0[_0x4cd17a(0x191)]);
                });
            }
        }
        if (startProgressBar) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == 'progressBar') {
                var _0x34f296 = $(_0x4d1983(0x114))[_0x4d1983(0x136)];
                _0x34f296 == 0x1 ? openProgressBar(_0x5c1fc0['titulo'], _0x5c1fc0[_0x4d1983(0x1a7)]) : $(_0x4d1983(0x153))['load'](_0x4d1983(0x12f), function() {
                    const _0x370eb2 = _0x4d1983;
                    openProgressBar(_0x5c1fc0[_0x370eb2(0x180)], _0x5c1fc0[_0x370eb2(0x1a7)]);
                });
            }
        }
        startNuiConfig && (_0x5c1fc0[_0x4d1983(0x1aa)] == 'nuiConfig' && (typeOpen = _0x4d1983(0x131), $(_0x4d1983(0x1b8))['fadeIn'](0x1), setNuiColor(_0x4d1983(0x131))), _0x5c1fc0[_0x4d1983(0x1aa)] == 'changeNuiColor' && (NuiColor = _0x5c1fc0[_0x4d1983(0x14c)]));
        if (startElevador) {
            if (_0x5c1fc0[_0x4d1983(0x1b6)]) {
                var _0x4327c1 = $('#nuiElevador\x20#actionmenuElevador')[_0x4d1983(0x136)];
                _0x4327c1 == 0x1 ? openElevador(_0x5c1fc0[_0x4d1983(0x158)], _0x5c1fc0[_0x4d1983(0x1cf)]) : $(_0x4d1983(0x125))['load'](_0x4d1983(0x1ba), function() {
                    openElevador(_0x5c1fc0['locs'], _0x5c1fc0['elevadorName']);
                });
            }
        }
        if (startJob) {
            if (_0x5c1fc0['acao'] == _0x4d1983(0x17e)) {
                var _0x9dc978 = $(_0x4d1983(0x148))[_0x4d1983(0x136)];
                _0x9dc978 == 0x1 ? openJob(_0x5c1fc0['job']) : $('#nuiJob')['load'](_0x4d1983(0x118), function() {
                    const _0x3d6e27 = _0x4d1983;
                    openJob(_0x5c1fc0[_0x3d6e27(0x174)]);
                });
            }
            _0x5c1fc0['acao'] == 'closeJob' && (jobOpen = ![], $(_0x4d1983(0x1da))[_0x4d1983(0x16b)](0x1));
        }
        if (startNavShop) {
            if (_0x5c1fc0['acao'] == _0x4d1983(0x135)) {
                var _0x8c1a86 = $(_0x4d1983(0x150))[_0x4d1983(0x136)];
                _0x8c1a86 == 0x1 ? openNavShop(_0x5c1fc0[_0x4d1983(0x1ce)]) : $(_0x4d1983(0x12c))['load'](_0x4d1983(0x12e), function() {
                    const _0xc4a1b = _0x4d1983;
                    openNavShop(_0x5c1fc0[_0xc4a1b(0x1ce)]);
                });
            }
        }
        if (startFuel) {
            if (_0x5c1fc0['acao'] == 'fuel') {
                var _0x39a40f = $(_0x4d1983(0x177))[_0x4d1983(0x136)];
                _0x39a40f == 0x1 ? openFuel(_0x5c1fc0['brand'], _0x5c1fc0[_0x4d1983(0x11b)], _0x5c1fc0[_0x4d1983(0x11d)], _0x5c1fc0[_0x4d1983(0x15e)]) : $(_0x4d1983(0x11e))[_0x4d1983(0x17f)](_0x4d1983(0x1e9), function() {
                    const _0x7f4d58 = _0x4d1983;
                    openFuel(_0x5c1fc0[_0x7f4d58(0x198)], _0x5c1fc0['price'], _0x5c1fc0[_0x7f4d58(0x11d)], _0x5c1fc0['type']);
                });
            }
            _0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x159) && updateFuelData(_0x5c1fc0['vehicleFuel'], _0x5c1fc0[_0x4d1983(0x140)], _0x5c1fc0['totalFuel']), _0x5c1fc0[_0x4d1983(0x1aa)] == 'fuelClose' && $(_0x4d1983(0x18e))[_0x4d1983(0x16b)](0x1);
        }
        if (startBennys) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == 'bennysOpen') {
                var _0x1de9f0 = $('#nuiBennys\x20#actionmenuBennys')[_0x4d1983(0x136)];
                _0x1de9f0 == 0x1 ? openBennys(_0x5c1fc0) : $(_0x4d1983(0x139))[_0x4d1983(0x17f)](_0x4d1983(0x1c0), function() {
                    openBennys(_0x5c1fc0);
                });
            }
        }
        if (startConce) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x1e8)) {
                var _0x31a07c = $('#nuiConce\x20#actionMenuConce')[_0x4d1983(0x136)];
                _0x31a07c == 0x1 ? openConce(_0x5c1fc0[_0x4d1983(0x1ce)]) : $(_0x4d1983(0x1b2))['load']('nyo_conce/index.html', function() {
                    openConce(_0x5c1fc0['config']);
                });
            }
        }
        if (startGaragem) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x144)) {
                var _0xf79174 = $(_0x4d1983(0x132))['length'];
                _0xf79174 == 0x1 ? openGaragem(_0x5c1fc0) : $(_0x4d1983(0x112))[_0x4d1983(0x17f)](_0x4d1983(0x149), function() {
                    openGaragem(_0x5c1fc0);
                });
            }
        }
        if (startCloakRoom) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x1d8)) {
                var _0x47482e = $('#nuiCloakRoom\x20#actionMenuCloakRoom')[_0x4d1983(0x136)];
                _0x47482e == 0x1 ? openCloakRoom(_0x5c1fc0) : $(_0x4d1983(0x1ad))['load'](_0x4d1983(0x1d0), function() {
                    openCloakRoom(_0x5c1fc0);
                });
            }
        }
        if (startCrosshair) {
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x110)) {}
            if (_0x5c1fc0[_0x4d1983(0x1aa)] == _0x4d1983(0x17b)) {}
        }
        if (_0x5c1fc0['closeNui']) {
            jobOpen && $('#actionmenuJob')[_0x4d1983(0x19d)](0x1);
            if (typeOpen == _0x4d1983(0x121)) $('.color-contentSkinShop')[_0x4d1983(0x163)](_0x4d1983(0x10c), 0x0), $(_0x4d1983(0x18c))[_0x4d1983(0x147)]('animarColorSkinShop'), $('.color-contentSkinShop')[_0x4d1983(0x147)](_0x4d1983(0x13a)), colorSkinShop = !![], $(_0x4d1983(0x157))[_0x4d1983(0x16b)](0x1);
            else {
                if (typeOpen == _0x4d1983(0x165)) $(_0x4d1983(0x152))[_0x4d1983(0x16b)](0x1);
                else {
                    if (typeOpen == _0x4d1983(0x1b3)) $(_0x4d1983(0x1d1))[_0x4d1983(0x163)](_0x4d1983(0x10c), 0x0), $(_0x4d1983(0x1d1))[_0x4d1983(0x147)](_0x4d1983(0x197)), $(_0x4d1983(0x1d1))['removeClass']('animarColorCloseBarberShop'), colorBarberShop = !![], $(_0x4d1983(0x1d5))[_0x4d1983(0x16b)](0x1);
                    else {
                        if (typeOpen == _0x4d1983(0x11a)) $(_0x4d1983(0x1e2))['css']('opacity', 0x0), $(_0x4d1983(0x1e2))[_0x4d1983(0x147)](_0x4d1983(0x1cb)), $('.color-contentTattooShop')[_0x4d1983(0x147)](_0x4d1983(0x128)), colorTattooShop = !![], $(_0x4d1983(0x181))['fadeOut'](0x1);
                        else {
                            if (typeOpen == _0x4d1983(0x131)) $(_0x4d1983(0x1b8))['fadeOut'](0x1);
                            else {
                                if (typeOpen == 'elevador') $(_0x4d1983(0x1d7))[_0x4d1983(0x16b)](0x1);
                                else {
                                    if (typeOpen == _0x4d1983(0x135)) $(_0x4d1983(0x19c))[_0x4d1983(0x16b)](0x1);
                                    else {
                                        if (typeOpen == _0x4d1983(0x15a)) $('#actionmenuFuel')[_0x4d1983(0x16b)](0x1);
                                        else typeOpen == _0x4d1983(0x1be) && $(_0x4d1983(0x15d))[_0x4d1983(0x16b)](0x1);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }), document[_0x83b8bc(0x178)] = function(_0x4e5722) {
        const _0x38c30a = _0x83b8bc;
        if (_0x4e5722[_0x38c30a(0x145)] == 0x1b) {
            jobOpen && $(_0x38c30a(0x1da))[_0x38c30a(0x19d)](0x1);
            if (typeOpen == _0x38c30a(0x121)) $(_0x38c30a(0x18c))[_0x38c30a(0x163)](_0x38c30a(0x10c), 0x0), $(_0x38c30a(0x18c))[_0x38c30a(0x147)](_0x38c30a(0x14f)), $(_0x38c30a(0x18c))[_0x38c30a(0x147)](_0x38c30a(0x13a)), colorSkinShop = !![], $(_0x38c30a(0x157))['fadeOut'](0x1), sendData(_0x38c30a(0x166), _0x38c30a(0x1bd));
            else {
                if (typeOpen == _0x38c30a(0x165)) $(_0x38c30a(0x152))[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x166), 'exit');
                else {
                    if (typeOpen == _0x38c30a(0x1b3)) $(_0x38c30a(0x1d1))['css'](_0x38c30a(0x10c), 0x0), $(_0x38c30a(0x1d1))[_0x38c30a(0x147)](_0x38c30a(0x197)), $(_0x38c30a(0x1d1))[_0x38c30a(0x147)](_0x38c30a(0x14a)), colorBarberShop = !![], $('#actionmenuBarberShop')[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x166), 'exit');
                    else {
                        if (typeOpen == 'tattooShop') $(_0x38c30a(0x181))[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x166), _0x38c30a(0x1bd));
                        else {
                            if (typeOpen == _0x38c30a(0x131)) $(_0x38c30a(0x1b8))[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x14e), _0x38c30a(0x1bd));
                            else {
                                if (typeOpen == _0x38c30a(0x124)) $(_0x38c30a(0x1d7))[_0x38c30a(0x16b)](0x1), sendData('ButtonClick3', _0x38c30a(0x1bd));
                                else {
                                    if (typeOpen == 'navShop') $('#actionmenuNavShop')['fadeOut'](0x1), sendData(_0x38c30a(0x15f), _0x38c30a(0x1bd));
                                    else {
                                        if (typeOpen == 'bennys') $(_0x38c30a(0x14d))['fadeOut'](0x1), sendData(_0x38c30a(0x185), _0x38c30a(0x1bd));
                                        else {
                                            if (typeOpen == _0x38c30a(0x15a)) $(_0x38c30a(0x18e))[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x15c), _0x38c30a(0x1bd));
                                            else {
                                                if (typeOpen == _0x38c30a(0x172)) $(_0x38c30a(0x112))['fadeOut'](0x1), garage[_0x38c30a(0x19e)](), sendData(_0x38c30a(0x193), _0x38c30a(0x1bd));
                                                else typeOpen == _0x38c30a(0x1be) && ($(_0x38c30a(0x15d))[_0x38c30a(0x16b)](0x1), sendData(_0x38c30a(0x199), _0x38c30a(0x1bd)));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else _0x4e5722['which'] == 0x48 && (typeOpen == 'bennys' && sendData(_0x38c30a(0x1d6), {}));
    };
});

function openSkinShop(_0x2854c2, _0x3eb281, _0x1c95b8, _0xd86933, _0x59eed4, _0xb88a0b, _0x184ce2) {
    const _0x460e5a = _0x24fd19;
    oldPart = _0x2854c2, change = {}, lojaDados = _0x3eb281, dataPartE = _0x1c95b8, dataPartD = _0xd86933, lojaType = _0x59eed4, sexo = _0xb88a0b, typeOpen = _0x460e5a(0x121), $(_0x460e5a(0x13d))[_0x460e5a(0x11f)](_0x460e5a(0x1d4)), $(_0x460e5a(0x1c2))[_0x460e5a(0x147)]('activeMSkinShop'), $(_0x460e5a(0x1c9))[_0x460e5a(0x10d)]('activeMSkinShop'), $(_0x460e5a(0x157))[_0x460e5a(0x19d)](0x1), setSkinShopE(_0x184ce2), jobOpen && $(_0x460e5a(0x1da))['fadeOut'](0x1);
}

function openGuardaRoupa(_0x43176f, _0x23445d, _0x17e979, _0x5dbbe9, _0x48a7c0, _0xd0f8e, _0x1d228b, _0x539f60) {
    const _0x416372 = _0x24fd19;
    oldPart = _0x43176f, change = {}, lojaDados = _0x23445d, dataPartE = _0x17e979, dataPartD = _0x5dbbe9, lojaType = _0x48a7c0, sexo = _0xd0f8e, typeOpen = _0x416372(0x165), $(_0x416372(0x15b))[_0x416372(0x11f)](_0x416372(0x12d)), $(_0x416372(0x1c3))[_0x416372(0x147)](_0x416372(0x1b5)), $(_0x416372(0x13b))[_0x416372(0x10d)](_0x416372(0x1b5)), $(_0x416372(0x17d))[_0x416372(0x147)](_0x416372(0x1b5)), $(_0x416372(0x17a))[_0x416372(0x10d)]('selecionadoGuardaRoupa'), $('#actionmenuGuardaRoupa')[_0x416372(0x19d)](0x1), setGuardaRoupaE(_0x1d228b), setGuardaRoupaD(_0x539f60), setNuiColor(_0x416372(0x165));
}

function _0x4902() {
    const _0x385ef7 = ['nyo_crosshair/index.html', '.color-contentSkinShop', 'val', '#actionmenuFuel', '.divCameraGuardaRoupa', 'updateGuardaRoupaColor', 'delay', '#corDireitoGuardaRoupa', 'garageClose', 'textureE', '\x2055.07%,\x20rgba(255,\x20255,\x20255,\x200)\x20102.46%)', '.valorGuardaRoupa', 'animarColorBarberShop', 'brand', 'cloakRoomClose', '8KPsLAm', '\x205.24%,\x20rgba(233,\x2053,\x2079,\x200)\x20127.36%)', '#actionmenuNavShop', 'fadeIn', 'close', '308AtEAqt', ',\x20#E9354F00)', 'activeMTattooShop', 'nyo_cloakroom/index.html', '#nuiNotify\x20notify', '#corEsquerdoGuardaRoupa', '#nuiSkinShop', '660858ENahMD', 'time', 'updateGuardaRoupaOutFit', 'categoryE', 'acao', '#color-inputNuiConfig', '.inputSalvarGuardaRoupa', '#nuiCloakRoom', '#precoTotalTattooShop', '58578qylAIh', '647810wdzRUC', 'nyo_tattoo/index.html', '#nuiConce', 'barberShop', '.categoryBarberShop[data-idpart=\x2712\x27]', 'selecionadoGuardaRoupa', 'openElevador', 'background-image', '#actionmenuNuiConfig', 'icon', 'nyo_elevador/index.html', 'updateBarberShop', 'notifyItem', 'exit', 'cloakRoom', '.menuContainerGuardaRoupa', 'nyo_bennys/index.html', 'item', '.categorySkinShop', '.menuGuardaRoupaE', 'shopCam', '#nuiTattooShop', 'nyo_nuiconfig/index.html', 'linear-gradient(to\x20right,\x20#E9354F00,\x20', '.idGuardaRoupa', '.categorySkinShop[data-idpart=\x27mascara\x27]', '\x205.23%,\x20', 'animarColorTattooShop', '3432cKzAIC', '#notifyFuel', 'config', 'elevadorName', 'nui_cloakroom/index.html', '.color-contentBarberShop', 'linear-gradient(54.76deg,\x20#E9C135\x205.23%,\x20', '.titleAfterNuiConfig', 'R$\x200', '#actionmenuBarberShop', 'bennysSetFocus', 'mainElevador', 'cloakRoomOpen', '8609600tJObwh', '#actionmenuJob', '#nuiBarberShop', 'drawa', 'notify', '.categoryTattooShop[data-idpart=\x27head\x27]', '#nuiBarberShop\x20#actionmenuBarberShop', 'prefix', 'newPart', '.color-contentTattooShop', 'sexo', '#totalGuardaRoupa', 'drawaE', '#nuiGuardaRoupa', 'background-color', 'conceOpen', 'nyo_fuel/index.html', 'updateGuardaRoupa', 'opacity', 'addClass', 'mensagem', '3007728UVOmwb', 'crosshair', 'updateBarberShopPrice', '#nuiGaragem', 'linear-gradient(-93.57deg,\x20', '#nuiProgressBar\x20#containerPaiProgressBar', 'linear-gradient(40.99deg,\x20', '1px\x20solid\x20', '170jkPIND', 'nyo_job/index.html', 'ready', 'tattooShop', 'price', 'addEventListener', 'vFuel', '#nuiFuel', 'html', '\x2047.24%,\x20rgba(208,\x2099,\x2099,\x200)\x20100%)', 'skinShop', 'Male', '.titleAfterFuel', 'elevador', '#nuiElevador', 'updateSkinShopPrice', 'value', 'animarColorCloseTattooShop', 'texture', 'menu', '\x202.99%,\x20rgba(0,\x200,\x200,\x200)\x2097.15%)', '#nuiNavShop', 'R$0', 'nyo_navshop/index.html', 'nyo_progressbar/index.html', 'nyo_barbershop/index.html', 'nuiConfig', '#nuiGaragem\x20#actionMenuGaragem', 'drawaD', '\x2054.23%,\x20', 'navShop', 'length', 'itemName', 'open', '#nuiBennys', 'animarColorCloseSkinShop', '.menuGuardaRoupaE[data-idpart=\x27mascara\x27]', 'mascara', '#precoTotalSkinShop', 'oldpart', 'cor', 'totalPrice', '#precoTotalBarberShop', '#pseudo-color-inputNuiConfig', '#nuiNotifyItem', 'garagemOpen', 'which', '.inputTotalFuel', 'removeClass', '#nuiJob\x20#actionmenuJob', 'nyo_garagem/index.html', 'animarColorCloseBarberShop', '1539612AkTcBX', 'color', '#actionmenuBennys', 'ButtonClick2', 'animarColorSkinShop', '#nuiNavShop\x20#actionmenuNavShop', '.inputValorFuel', '#actionmenuGuardaRoupa', '#nuiProgressBar', 'activeMBarberShop', 'shopRotation', 'nyo_notify/index.html', '#actionmenuSkinShop', 'locs', 'fuelUpdate', 'fuel', '#precoTotalGuardaRoupa', 'fuelClose', '#actionMenuCloakRoom', 'type', 'navShopClose', 'tipo', '.categoryBarberShop', '.nomeOutfitGuardaRoupa', 'css', 'progressBar', 'guardaRoupa', 'ButtonClick', '#nuiNotifyItem\x20notifyItem', 'categoryD', 'dados', '#slideGuardaRoupa', 'fadeOut', 'linear-gradient(24.73deg,\x20', 'qtd', 'updateTattooShopPrice', '.inputDivGuardaRoupa', 'linear-gradient(54.76deg,\x20', 'roupaId', 'garagem', 'post', 'job', 'data', '.outfitsGuardaRoupa', '#nuiFuel\x20#actionmenuFuel', 'onkeyup', ',\x20#ff000000\x20)', '.menuGuardaRoupaD[data-idpart=\x27oculos\x27]', 'crosshairChange', 'conce', '.menuGuardaRoupaD', 'openJob', 'load', 'titulo', '#actionmenuTattooShop', '.inputLitrosFuel', '#nuiNotify', '#nuiTattooShop\x20#actionmenuTattooShop', 'bennysClose', 'border', '--aug-border-bg', 'nyo_notifyitens/index.html', '.salvarGuardaRoupa', '#nuiJob'];
    _0x4902 = function() {
        return _0x385ef7;
    };
    return _0x4902();
}

function openBarberShop(_0x1c07c7, _0x5d2b5d, _0x1637f2, _0x22f7b2, _0x223726, _0xb1f14, _0x543de5, _0x442ea8) {
    const _0x32868c = _0x24fd19;
    oldPart = _0x1c07c7, change = {}, lojaDados = _0x5d2b5d, dataPartE = _0x1637f2, dataPartD = _0x22f7b2, lojaType = _0x223726, sexo = _0xb1f14, typeOpen = 'barberShop', $(_0x32868c(0x161))[_0x32868c(0x147)]('activeMBarberShop'), $(_0x32868c(0x1b4))['addClass'](_0x32868c(0x154)), $(_0x32868c(0x141))[_0x32868c(0x11f)](_0x32868c(0x1d4)), $(_0x32868c(0x1d5))[_0x32868c(0x19d)](0x1), setBarberShop(_0x543de5, _0x442ea8, 0.99), jobOpen && $('#actionmenuJob')[_0x32868c(0x16b)](0x1);
}

function openTattoShop(_0x9c0b8d, _0xe2781d, _0x5cdb84, _0x5cc93d) {
    const _0x44508a = _0x24fd19;
    oldPart = _0x9c0b8d, lojaDados = _0xe2781d, sexo = _0x5cdb84, dataPartE = _0x5cc93d, typeOpen = _0x44508a(0x11a), $('.categoryTattooShop')[_0x44508a(0x147)](_0x44508a(0x1a1)), $(_0x44508a(0x1de))[_0x44508a(0x10d)](_0x44508a(0x1a1)), $(_0x44508a(0x1ae))[_0x44508a(0x11f)](_0x44508a(0x1d4)), $(_0x44508a(0x181))[_0x44508a(0x19d)](0x1), setTattooShopE(), jobOpen && $(_0x44508a(0x1da))['fadeOut'](0x1);
}

function openNotify(_0x45f1c3, _0x26385f, _0x4df622, _0x51ecc7, _0x185560) {
    showNotify(_0x45f1c3, _0x26385f, _0x4df622, _0x51ecc7, _0x185560);
}

function openNotifyItem(_0x11834e, _0x2722a9, _0x2f931e, _0x4b0a45, _0x3a5a14) {
    showNotifyItem(_0x11834e, _0x2722a9, _0x2f931e, _0x4b0a45, _0x3a5a14);
}

function openProgressBar(_0x43de94, _0x2c4a5f) {
    const _0x17dc39 = _0x24fd19;
    startProgressBarAc(_0x43de94, _0x2c4a5f), setNuiColor(_0x17dc39(0x164));
}

function openElevador(_0x4002e0, _0x47b22b) {
    const _0x53ef19 = _0x24fd19;
    typeOpen = _0x53ef19(0x124), $(_0x53ef19(0x1d7))[_0x53ef19(0x19d)](0x1), setElevadorButtons(_0x4002e0, _0x47b22b), setNuiColor('elevador');
}

function openJob(_0x611cba) {
    const _0x1d668e = _0x24fd19;
    typeOpen = _0x1d668e(0x174), jobOpen = !![], $(_0x1d668e(0x1da))[_0x1d668e(0x19d)](0x1), setJobNui(_0x611cba);
}

function openNavShop(_0x38b91f) {
    const _0x8a7dd6 = _0x24fd19;
    typeOpen = _0x8a7dd6(0x135), $(_0x8a7dd6(0x19c))[_0x8a7dd6(0x19d)](0x1), setNavShopNui(_0x38b91f), setNuiColor(_0x8a7dd6(0x135));
}

function openFuel(_0x1f89b2, _0x25ee94, _0x4189e5, _0x3dfb23) {
    const _0x39fbeb = _0x24fd19;
    typeOpen = _0x39fbeb(0x15a), $(_0x39fbeb(0x18e))[_0x39fbeb(0x19d)](0x1), setFuelData(_0x1f89b2, _0x25ee94, _0x4189e5, _0x3dfb23), setNuiColor(_0x39fbeb(0x15a));
}

function openBennys(_0x3686a1) {
    const _0x18ac37 = _0x24fd19;
    typeOpen = 'bennys', $(_0x18ac37(0x14d))[_0x18ac37(0x19d)](0x1), initBennysNUI(_0x3686a1);
}

function openGaragem(_0x1ac017) {
    const _0xf0aebc = _0x24fd19;
    typeOpen = _0xf0aebc(0x172), $(_0xf0aebc(0x112))[_0xf0aebc(0x19d)](0x1), garage[_0xf0aebc(0x138)](_0x1ac017);
}

function openConce(_0x203d3f) {
    const _0x553807 = _0x24fd19;
    typeOpen = _0x553807(0x17c), $('#actionMenuConce')[_0x553807(0x19d)](0x1), openNuiConce(_0x203d3f);
}

function openCloakRoom(_0x2f3808) {
    const _0x2f4298 = _0x24fd19;
    typeOpen = _0x2f4298(0x1be), loadCloakRoom(_0x2f3808);
}

function setNuiColor(_0x344f88) {
    const _0x2ccaf3 = _0x24fd19;
    if (_0x344f88 == _0x2ccaf3(0x165)) $(_0x2ccaf3(0x18f))[_0x2ccaf3(0x163)]('--aug-border-bg', _0x2ccaf3(0x1d2) + NuiColor + _0x2ccaf3(0x19b)), $(_0x2ccaf3(0x16a))['css'](_0x2ccaf3(0x187), _0x2ccaf3(0x113) + NuiColor + _0x2ccaf3(0x12b)), $(_0x2ccaf3(0x1bf))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), _0x2ccaf3(0x16c) + NuiColor + _0x2ccaf3(0x120)), $('.menuInternGuardaRoupaAfter')[_0x2ccaf3(0x163)](_0x2ccaf3(0x1b7), 'linear-gradient(to\x20left,\x20#ff000000,\x20' + NuiColor + _0x2ccaf3(0x179)), $(_0x2ccaf3(0x196))['css'](_0x2ccaf3(0x186), _0x2ccaf3(0x116) + NuiColor + ''), $(_0x2ccaf3(0x1c8))[_0x2ccaf3(0x163)](_0x2ccaf3(0x186), '1px\x20solid\x20' + NuiColor + ''), $(_0x2ccaf3(0x1a4))['css'](_0x2ccaf3(0x187), _0x2ccaf3(0x115) + NuiColor + _0x2ccaf3(0x195)), $(_0x2ccaf3(0x192))['css']('--aug-border-bg', _0x2ccaf3(0x115) + NuiColor + _0x2ccaf3(0x195)), $(_0x2ccaf3(0x1e4))['css'](_0x2ccaf3(0x187), _0x2ccaf3(0x16c) + NuiColor + '\x2047.24%,\x20rgba(208,\x2099,\x2099,\x200)\x20100%)'), $(_0x2ccaf3(0x16f))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), 'linear-gradient(24.73deg,\x20' + NuiColor + _0x2ccaf3(0x120)), $(_0x2ccaf3(0x1ac))['css']('border', _0x2ccaf3(0x116) + NuiColor + ''), $(_0x2ccaf3(0x189))[_0x2ccaf3(0x163)](_0x2ccaf3(0x186), '1px\x20solid\x20' + NuiColor + ''), $(_0x2ccaf3(0x176))[_0x2ccaf3(0x163)](_0x2ccaf3(0x186), _0x2ccaf3(0x116) + NuiColor + ''), $(_0x2ccaf3(0x162))[_0x2ccaf3(0x163)](_0x2ccaf3(0x186), _0x2ccaf3(0x116) + NuiColor + '');
    else {
        if (_0x344f88 == _0x2ccaf3(0x131)) $('#containerNuiConfig')[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), 'linear-gradient(54.76deg,\x20' + NuiColor + _0x2ccaf3(0x1ca) + NuiColor + _0x2ccaf3(0x19b)), $(_0x2ccaf3(0x1d3))[_0x2ccaf3(0x163)]('background-image', 'linear-gradient(to\x20left,\x20#ff000000,\x20' + NuiColor + _0x2ccaf3(0x179)), $(_0x2ccaf3(0x142))[_0x2ccaf3(0x163)](_0x2ccaf3(0x1e7), NuiColor), $(_0x2ccaf3(0x1ab))[_0x2ccaf3(0x18d)](NuiColor);
        else _0x344f88 == _0x2ccaf3(0x15a) && ($(_0x2ccaf3(0x1cd))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), 'linear-gradient(54.76deg,\x20' + NuiColor + _0x2ccaf3(0x1ca) + NuiColor + _0x2ccaf3(0x19b)), $(_0x2ccaf3(0x123))[_0x2ccaf3(0x163)]('background-image', _0x2ccaf3(0x1c7) + NuiColor + _0x2ccaf3(0x1a0)), $(_0x2ccaf3(0x151))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), _0x2ccaf3(0x170) + NuiColor + _0x2ccaf3(0x1ca) + NuiColor + '\x205.24%,\x20rgba(233,\x2053,\x2079,\x200)\x20127.36%)'), $(_0x2ccaf3(0x146))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), 'linear-gradient(54.76deg,\x20' + NuiColor + _0x2ccaf3(0x134) + NuiColor + '\x2054.24%,\x20rgba(233,\x2053,\x2079,\x200)\x20127.36%)'), $(_0x2ccaf3(0x182))[_0x2ccaf3(0x163)](_0x2ccaf3(0x187), _0x2ccaf3(0x170) + NuiColor + _0x2ccaf3(0x1ca) + NuiColor + '\x205.24%,\x20rgba(233,\x2053,\x2079,\x200)\x20127.36%)'));
    }
}

function inArray(_0x1051b0, _0x1a6393) {
    const _0x7b1110 = _0x24fd19;
    var _0x1145dd = _0x1a6393[_0x7b1110(0x136)];
    for (var _0x211805 = 0x0; _0x211805 < _0x1145dd; _0x211805++) {
        if (_0x1a6393[_0x211805] == _0x1051b0) return !![];
    }
    return ![];
}
const onRangeChange = (_0x3ee592, _0x20b8a7) => {
        const _0x4e84e3 = _0x24fd19;
        sendData(_0x4e84e3(0x155), _0x20b8a7);
    },
    shopChangeCam = _0xb0c289 => {
        const _0x25591e = _0x24fd19;
        sendData(_0x25591e(0x1c4), _0xb0c289);
    },
    sendData = (_0x2a354e, _0x5771b8) => {
        const _0x27f249 = _0x24fd19;
        $[_0x27f249(0x173)]('http://nyo_module/' + _0x2a354e, JSON['stringify'](_0x5771b8), function(_0x109588) {});
    };