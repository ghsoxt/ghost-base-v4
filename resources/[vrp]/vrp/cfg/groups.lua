local cfg = {}

cfg.groups = {
	["mindmaster157"] = {
		_config = {
			title = "MindMaster"
		},
		"mindmaster.permissao",
		"administrador.permissao",
		"moderador.permissao",
		"suporte.permissao",
		"ac.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.teleport",
		"player.wall",
		"mqcu.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	}, 
	["administrador157"] = {
		_config = {
			title = "Administrador(a)"
		},
		"administrador.permissao",
		"moderador.permissao",
		"suporte.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.wall",
		"player.teleport",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	},
	["moderador157"] = {
		_config = {
			title = "Moderador(a)"
		},
		"moderador.permissao",
		"suporte.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.wall",
		"player.teleport",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	},
	["suporte157"] = {
		_config = {
			title = "Suporte"
		},
		"suporte.permissao",
		"player.teleport",
		"player.noclip",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
	},
	["paisana-mind"] = {
		_config = {
			title = "mind-paisana",
		},
		"paisana-mind.permissao",
		"paisana-staff.permissao",
	},
	["paisana-admin"] = {
		_config = {
			title = "admin-paisana",
		},
		"paisana-admin.permissao",
		"paisana-staff.permissao",
	},
	["paisana-mod"] = {
		_config = {
			title = "mod-paisana",
		},
		"paisana-mod.permissao",
		"paisana-staff.permissao",
	},
	["paintball"] = {
		_config = {
			title = "paintball",
		},
		"mqcu.permissao",
		"paintball.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.teleport",
	},
-----------------------------------------------------------------------------
--[	Setagens Vips ]----------------------------------------------------------
-----------------------------------------------------------------------------
["Streamer"] = {
	_config = {
		title = "VIP Streamer",
		gtype = "vip"
	},
	"player.som",
	"player.susp",
	"vip.permissao"
},
["Bronze"] = {
	_config = {
		title = "VIP Bronze",
		gtype = "vip"
	},
	"bronze.permissao",
	"player.som",
	"player.susp",
	"vip.permissao"
},
["Prata"] = {
	_config = {
		title = "VIP Prata",
		gtype = "vip"
	},
	"prata.permissao",
	"player.som",
	"player.susp",
	"vip.permissao"
},
["Ouro"] = {
	_config = {
		title = "VIP Ouro",
		gtype = "vip"
	},
	"ouro.permissao",
	"player.som",
	"player.susp",
	"vip.permissao",
	"mochila.permissao"
},
["Platina"] = {
	_config = {
		title = "VIP Platina",
		gtype = "vip"
	},
	"platina.permissao",
	"player.som",
	"player.susp",
	"cor.permissao",
	"vip.permissao",
	"attachs.permissao",
	"instagram.permissao",
	"mochila.permissao"
},

["Alienrp"] = {
	_config = {
		title = "VIP Alien RP",
		gtype = "vip"
	},
	"Alien.permissao",
	"player.som",
	"player.susp",
	"cor.permissao",
	"vip.permissao",
	"attachs.permissao",
	"naopagaipva.permissao",
	"instagram.permissao",
	"mochila.permissao"
},

["Diamond"] = {
	_config = {
		title = "VIP Diamond",
		gtype = "vip"
	},
	"diamond.permissao",
	"player.som",
	"player.susp",
	"cor.permissao",
	"vip.permissao",
	"attachs.permissao",
	"naopagaipva.permissao",
	"instagram.permissao",
	"mochila.permissao"
},
	["booster"] = {
		_config = {
			title = "Booster",
		},
		"booster.permissao"
	},
	["som"] = {
		_config = {
			title = "Som",
		},
		"player.som",
	},
	["instagram"] = {
		_config = {
			title = "Instagram",
		},
		"instagram.permissao",
	},
	["estagiario"] = {
		_config = {
			title = "estagiario",
		},
		"estagiario.permissao",
	},
	["funcionario"] = {
		_config = {
			title = "funcionario",
		},
		"funcionario.permissao",
	},
	["gerente"] = {
		_config = {
			title = "gerente",
		},
		"gerente.permissao",
	},
	["patrao"] = {
		_config = {
			title = "patrao",
		},
		"patrao.permissao",
	},
-----------------------------------------------------------------------------
--[	Departamento Médico ]----------------------------------------------------
-----------------------------------------------------------------------------
	["diretor"] = {
		_config = {
			title = "Hospital Diretor",
			gtype = "job"
		},
		"diretor.permissao",
		"polpar.permissao",
		"player.blips",
		"paramedico.permissao",
	}, 
	["paisana-diretor"] = {
		_config = {
			title = "Paisana Diretor",
			gtype = "job"
		},
		"paisana-diretor.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["especialista"] = {
		_config = {
			title = "Especialista",
			gtype = "job"
		},
		"especialista.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-especialista"] = {
		_config = {
			title = "Paisana Especialista",
			gtype = "job"
		},
		"paisana-especialista.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["psicologo"] = {
		_config = {
			title = "Psicologo",
			gtype = "job"
		},
		"psicologo.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-psicologo"] = {
		_config = {
			title = "Paisana Psicologo",
			gtype = "job"
		},
		"paisana-psicologo.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["medico"] = {
		_config = {
			title = "Medico",
			gtype = "job"
		},
		"medico.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-medico"] = {
		_config = {
			title = "Paisana Medico",
			gtype = "job"
		},
		"paisana-medico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["enfermeiro"] = {
		_config = {
			title = "Enfermeiro",
			gtype = "job"
		},
		"enfermeiro.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	},
	["paisana-enfermeiro"] = {
		_config = {
			title = "Paisana Enfermeiro",
			gtype = "job"
		},
		"paisana-enfermeiro.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paramedico"] = {
		_config = {
			title = "Paramedico",
			gtype = "job"
		},
		"paramedico.permissao",
		"polpar.permissao",
		"para.permissao",
		"player.blips",
	}, 
	["paisana-paramedico"] = {
		_config = {
			title = "Paramedico de Folga",
			gtype = "job"
		},
		"paisana-paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	},
-----------------------------------------------------------------------------
--[	POLICIA ]----------------------------------------------------------------
-----------------------------------------------------------------------------
	-- Recruta
	["Recruta"] = {
		_config = {
			title = "Recruta",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"garmas.permissao",
		"recruta.servico",
		"recruta.arsenal",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaRecruta"] = {
		_config = {
			title = "Recruta Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"recruta.folga",
		"sem.permissao"
	},
		["Cabo"] = {
		_config = {
			title = "Cabo",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"cabo.permissao",
		"recruta.arsenal",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaCabo"] = {
		_config = {
			title = "Cabo Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanacabo.permissao",
		"sem.permissao"
	},
	["Major"] = {
		_config = {
			title = "Major",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"major.permissao",
		"recruta.arsenal",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaMajor"] = {
		_config = {
			title = "Major Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanamajor.permissao",
		"sem.permissao"
	},
	-- Soldado
	["Soldado"] = {
		_config = {
			title = "Soldado",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"soldesarg.arsenal",
		"portadp.permissao",
		"soldado.servico",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaSoldado"] = {
		_config = {
			title = "Soldado Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"soldado.folga",
		"sem.permissao"
	},
	-- Sargento
	["Sargento"] = {
		_config = {
			title = "Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"soldesarg.arsenal",
		"sargento.servico",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaSargento"] = {
		_config = {
			title = "Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenete
	["Tenente"] = {
		_config = {
			title = "Tenente",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"garmas.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"tenente.servico",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaTenente"] = {
		_config = {
			title = "Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["Capitao"] = {
		_config = {
			title = "Capitão",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"capitaoecoronel.arsenal",
		"capitao.servico",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaCapitao"] = {
		_config = {
			title = "Capitão Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	["Coronel"] = {
		_config = {
			title = "Coronel",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"garmas.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"policial.permissao",
		"sem.permissao"
	},
	["PaisanaCoronel"] = {
		_config = {
			title = "Coronel Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	["ComandanteGeral"] = {
		_config = {
			title = "Comandante Geral",
			gtype = "job"
		},
		"policia.permissao",
		"policial.permissao",
		"comandantegeral.permissao",
		"garmas.permissao",
	},
	["PaisanaComandanteGeral"] = {
		_config = {
			title = "Comandante Geral Folga",
			gtype = "job"
		},
		"paisanacomandantegeral.permissao",
		"sem.permissao"
	},
-----------------------------------------------------------------------------
--[TRABALHOS]----------------------------------------------------------------
-----------------------------------------------------------------------------
	["mecanico"] = {
		_config = {
			title = "Mecânico",
			gtype = "job"
		},
		"mecanico.permissao",
		"desmanche.permissao",
		"bennys.permissao",
	},
	["paisana-mecanico"] = {
		_config = {
			title = "Mecânico de folga",
			gtype = "job"
		},
		"paisana-mecanico.permissao",
	},
	["lider-mecanico"] = {
		_config = {
			title = "Lider Mecânica",
			gtype = "job"
		},
		"mecanico.permissao",
		"desmanche.permissao",
		"bennys.permissao",
	},
	["advogado"] = {
		_config = {
			title = "Advogado",
			gtype = "job",
		},
		"advogado.permissao",
	},
	["desembargador"] = {
		_config = {
			title = "Desembargador",
			gtype = "job",
		},
		"desembargador.permissao",
		"advogado.permissao",
	},
	["promotor"] = {
		_config = {
			title = "Promotor de Justiça",
			gtype = "job",
		},
		"promotor.permissao",
		"advogado.permissao",
	},
	["juiz"] = {
		_config = {
			title = "Juiz",
			gtype = "job",
		},
		"juiz.permissao",
		"advogado.permissao",
	},
	------------------------------
----ARMAS Cartel------1--------
------------------------------

["LiderCartel"] = {
	_config = {
		title = "Lider Cartel",
		gtype = "job"
	},
	"lidercarteldemedelin.permissao",
	"carteldemedelin.permissao",
	"armas.permissao",
	"ilegal.permissao"
},
["Cartel"] = {
	_config = {
		title = "Cartel",
		gtype = "job"
	},
	"carteldemedelin.permissao",
	"armas.permissao",
	"ilegal.permissao"
},

------------------------------
--------ARMAS BRATVA---2-----
------------------------------
------------------------------

["LiderBratva"] = {
	_config = {
		title = "Lider Bratva",
		gtype = "job"
	}, 
	"liderbratva.permissao",
	"bratva.permissao",
	"armas.permissao",
	"ilegal.permissao"
},
["Bratva"] = {
	_config = {
		title = "Bratva",
		gtype = "job"
	},
	"bratva.permissao",
	"armas.permissao",
	"ilegal.permissao"
},

------------------------------
---------DROGAS GROTA----3----
------------------------------

["LiderGrota"] = {
	_config = {
		title = "Lider Grota",
		gtype = "job"
	},
	"lidergrota.permissao",
	"grota.permissao",
	"maconha.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
	["Grota"] = {
	_config = {
		title = "Grota",
		gtype = "job"
	},
	"grota.permissao",
	"maconha.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},

------------------------------
-------DROGAS FRANÇA------4-----
------------------------------

["LiderFranca"] = {
	_config = {
		title = "Lider França",
		gtype = "job"
	},
	"liderfranca.permissao",
	"franca.permissao",
	"drogas.permissao",
	"cocaina.permissao",
	"ilegal.permissao"
},
	["Franca"] = {
	_config = {
		title = "França",
		gtype = "job"
	},
	"franca.permissao",
	"drogas.permissao",
	"cocaina.permissao",
	"ilegal.permissao"
},

------------------------------
-------DROGAS EGITO-----5-----
------------------------------

["Egito"] = {
	_config = {
		title = "Egito",
		gtype = "job"
	},
	"egito.permissao",
	"lsd.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
	["LiderEgito"] = {
	_config = {
		title = "Lider Egito",
		gtype = "job"
	},
	"lideregito.permissao",
	"egito.permissao",
	"lsd.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},

------------------------------
---------MUNIÇAO TRIADE---6----
------------------------------

["Triade"] = {
	_config = {
		title = "Triade",
		gtype = "job"
	},
	"triade.permissao",
	"municao.permissao",
	"ilegal.permissao"
},
	["LiderTriade"] = {
	_config = {
		title = "Lider Triade",
		gtype = "job"
	},
	"lidertriade.permissao",
	"triade.permissao",
	"municao.permissao",
	"ilegal.permissao"
},
------------------------------
---------MUNIÇAO YAKUZA---7----
------------------------------

["Yakuza"] = {
	_config = {
		title = "Yakuza",
		gtype = "job"
	},
	"yakuza.permissao",
	"municao.permissao",
	"ilegal.permissao"
},
	["LiderYakuzz"] = {
	_config = {
		title = "Lider Yakuza",
		gtype = "job"
	},
	"lideryakuza.permissao",
	"yakuza.permissao",
	"municao.permissao",
	"ilegal.permissao"
},


------------------------------
--------DROGAS COLOMBIA-----8----
------------------------------

["Colombia"] = {
	_config = {
		title = "Colombia",
		gtype = "job"
	},
	"colombia.permissao",
	"cocaina.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
["LiderColombia"] = {
	_config = {
		title = "Lider Colombia",
		gtype = "job"
	},
	"lidercolombia.permissao",
	"colombia.permissao",
	"cocaina.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},

------------------------------
-------DROGAS TURQUIA-----9---
------------------------------

["Turquia"] = {
	_config = {
		title = "Turquia",
		gtype = "job"
	},
	"turquia.permissao",
	"maconha.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
["LiderTurquia"] = {
	_config = {
		title = "Lider Turquia",
		gtype = "job"
	},
	"liderturquia.permissao",
	"turquia.permissao",
	"maconha.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},

------------------------------
--------CONTRABANDO CAMORRA----10---
------------------------------

["Camorra"] = {
	_config = {
		title = "Camorra",
		gtype = "job"
	},
	"camorra.permissao",
	"contrabando.permissao",
	"ilegal.permissao"
},
["LiderCamorra"] = {
	_config = {
		title = "Lider Camorra",
		gtype = "job"
	},
	"lidercamorra.permissao",
	"camorra.permissao",
	"contrabando.permissao",
	"ilegal.permissao"
},

------------------------------
-----LAVAGEM BAHAMAS-----11-----
------------------------------

["Bahamas"] = {
	_config = {
		title = "Bahamas",
		gtype = "job"
	},
	"bahamas.permissao",
	"lavagem.permissao",
	"ilegal.permissao"
},
["LiderBahamas"] = {
	_config = {
		title = "Bahamas Lider",
		gtype = "job"
	},
	"Liderbahamas.permissao",
	"bahamas.permissao",
	"lavagem.permissao",
	"ilegal.permissao"
},

------------------------------
-----LAVAGEM VANILLA----12----
------------------------------

["Vanilla"] = {
	_config = {
		title = "Vanilla",
		gtype = "job"
	},
	"vanilla.permissao",
	"lavagem.permissao",
	"ilegal.permissao"
},
["LiderVanilla"] = {
	_config = {
		title = "Lider Vanilla",
		gtype = "job"
	},
	"lidervanilla.permissao",
	"vanilla.permissao",
	"lavagem.permissao",
	"ilegal.permissao"
},
------------------------------
-------DESMANCHE MC-----13----
------------------------------

["LiderMotoclub"] = {
	_config = {
		title = "Lider Motoclub",
		gtype = "job"
	},
	"lidermc.permissao",
	"motoclub.permissao",
	"desmanche.permissao",
	"ilegal.permissao"
},
["Motoclub"] = {
	_config = {
		title = "Motoclub",
		gtype = "job"
	},
	"motoclub.permissao",
	"desmanche.permissao",
	"ilegal.permissao"
},

------------------------------
------DESMANCHE HELLS--14----
------------------------------

["LiderHells"] = {
	_config = {
		title = "Lider Hells Angels",
		gtype = "job"
	},
	"liderhells.permissao",
	"hells.permissao",
	"desmanche.permissao",
	"ilegal.permissao"
},
["Hells"] = {
	_config = {
		title = "Hells Angels",
		gtype = "job"
	},
	"hells.permissao",
	"desmanche.permissao",
	"ilegal.permissao"
},
------------------------------
-------CONTRABANDO TEQUILA---15--
------------------------------

["LiderTequila"] = {
	_config = {
		title = "Lider Tequila",
		gtype = "job"
	},
	"lidertequila.permissao",
	"tequila.permissao",
	"ilegal.permissao",
	"contrabando.permissao"
},
["Tequila"] = {
	_config = {
		title = "Tequila",
		gtype = "job"
	},
	"tequila.permissao",
	"contrabando.permissao",
	"ilegal.permissao"
},
------------------------------
-------DROGAS CANADA-----16---
------------------------------

["LiderCanada"] = {
	_config = {
		title = "Lider Canada",
		gtype = "job"
	},
	"lidercanada.permissao",
	"canada.permissao",
	"lsd.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
["Canada"] = {
	_config = {
		title = "Canada",
		gtype = "job"
	},
	"canada.permissao",
	"lsd.permissao",
	"drogas.permissao",
	"ilegal.permissao"
},
	-----------------------------------------------------------------------------
	---[	grupo de casas mods ]------------------------------------------------
	-----------------------------------------------------------------------------
	["mansaomalibu"] = {
		_config = {
			title = "Casa Malibu"
		},
		"mansaomalibu.permissao",
	},
	["mansaogold"] = {
		_config = {
			title = "Casa Gold"
		},
		"mansaogold.permissao",
	},
	["cobertura"] = {
		_config = {
			title = "Cobertura"
		},
		"cobertura.permissao",
	},
	["cobertura2"] = {
		_config = {
			title = "Cobertura 2"
		},
		"cobertura2.permissao",
	},
	["mansaoextra01"] = {
		_config = {
			title = "Mansao Extra 01"
		},
		"mansaoextra01.permissao",
	},
	["mansaoextra02"] = {
		_config = {
			title = "Mansao Extra 02"
		},
		"mansaoextra02.permissao",
	},
}

cfg.users = {
	[1] = { "mindmaster157" }
}

cfg.selectors = {}

return cfg