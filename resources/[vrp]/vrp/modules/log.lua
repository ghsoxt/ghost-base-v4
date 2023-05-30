local channels = {
    pagamentocasas = '---------------------1082535314452652052/OG3FR1eB9R2gdX72Pswr7O6iQWYxs77I0ZkZUQNDX2Xepi1hgo2hTun2F0XJx_D6VbX1',
    Casasvender = '---------------------1082535428940370051/mVpLJwzlcgmIA2y6ruHZM6JSgyV4Z-skisAN-zc10B2VsoUWFj8SmEWChc5CkOhklY2C',
    CasasTrocarGaragem = '',
    CasasComprarGaragem = '',
    CasasTransferir = '---------------------1082535591767445546/6_5eVX-AKu3AzunHCDMeRKNqxifxZIkYYM6bul9Diq_UsqyY7NQbYXqFtYiq7yIL8EOh',
    CasasRemoverFaltaAluguel = '---------------------1082535822923923547/jisB891_R2GLmiIPMoLeWbl5GkVopSwHtBwW8RjgXWV34SmL8HguQ3s8RryJzzN_6jKb',
    CasasComprar = '---------------------1082535933666132078/GmZ9Igo2XTIREK-ikBMgRm9wNR1PaSVQT5QpMFfyxnUVUHwxD4aoUYxeoRuu68-fwkME',
    CasasComprarVip = '---------------------1082536013823483916/XgWUIhtugCeywfTyxzxdGdeVuXk4If80OQR7HUtWF97jsQdXKyacvpIW4HCBFQ-2QTx5',
    ApComprar = '---------------------1082535933666132078/GmZ9Igo2XTIREK-ikBMgRm9wNR1PaSVQT5QpMFfyxnUVUHwxD4aoUYxeoRuu68-fwkME',
    ApComprarVip = '---------------------1082536013823483916/XgWUIhtugCeywfTyxzxdGdeVuXk4If80OQR7HUtWF97jsQdXKyacvpIW4HCBFQ-2QTx5',
    SpawnMoney = '---------------------1082536450454736977/bpsXklY4p4cf4bpwaAt9n8QV6UOsZMCegil3jqppNcPZVChdrepVzxGNgYWffwmtp181',
    LogUnban = '---------------------1082536612321304636/kT9UkaZDt5HDlfgVHhXZJf_jd6SBtJrjExIJTub-bGMwcINyIL8Z0NW2b3p75YVpd8Js',
    LogBan = '---------------------1082536504598995035/NdjfUzM9TTpGx6rpSq99sGQq3A2-ECnQuioqJEyYazYK469IJrSdUnWGFicHUVz_q37n',
    LogNc = '---------------------1082536781293031425/cHBm01x5Rja6SaTOuSErLsvYaB1mAh3qLXtTKCtxzjQsCEfH94DofF_0mSaj94SqAhD5',
    LogBan2Hack = '---------------------1082536504598995035/NdjfUzM9TTpGx6rpSq99sGQq3A2-ECnQuioqJEyYazYK469IJrSdUnWGFicHUVz_q37n',
    LogKick = '---------------------1082536924624994324/g_pnzQp0peE7S2bzKeF18TDITIvLp9RgMjJl_ZDzfjaZ5gfzLj508IBVcBnggF8wsi_k',
    LogUnWl = '---------------------1082536977146056744/AAvcnZ_G2bqxBgMpC7eQiZZ4FIZVaSpYfvd-JkEd1QLuuQvyc2E5zhHcll---1vkRasg',
    LogWl = '---------------------1082537032049512508/-qPHdPmFtTQfOYV3_HJ4lnBcU2aPTa5lxkXe7cbn9b7NG32syxUoR94PuHMJD0jv9mxx',
    LogGodAll = '---------------------1082537144926601246/HzG2jgAPW3iHyj1FjiSisMDbnBc2ixF4lYirfoKpXaN4fuvDr4vOnTvMvxQlmTVpDAgC',
    LogFix = '---------------------1082537274539003914/E0nbMMMdJX4WTiaO-ENgB86n1647vXOIF0asf0HlnPz4rxGq-QT3afZvExYry-DswTyq',
    LogRemCar = '---------------------1082537442160152586/fJ6CAH47x9pFid5Otv-UQQ2_97jCKsKzVAZbLud9LM1h9ltJS4MlgMR0NXnfLTXOqBKR',
    LogAddCar = '---------------------1082537488800809051/dnVQ8WFwBnp395z0ZZBrEP3K6YzG2rfDfY7oHARin-_pfveNRYNeO3JsJX9io8H5o5RB',
    logRetirarDetido = '---------------------1082537741344059402/FkdAjEmtAjrjxSwX3MkV8Lpu688Ocmo7BTHzDFcQJs6A6UeXdONJGe4lVk50yYAOZjLs',
    LogkickSrc = '---------------------1082536924624994324/g_pnzQp0peE7S2bzKeF18TDITIvLp9RgMjJl_ZDzfjaZ5gfzLj508IBVcBnggF8wsi_k',
    LogGovernadorMsg = '---------------------1082537914900156437/WMWcp16nMv_x1CgT5EgRXwy013xWzvMnU73os707vJVR7gkiRhZ-G-oof1zXmzSyqSyO',
    LogMod = '---------------------1082538024115650610/IkB-F88utW7yFCcbSV15dIqoELmOgGRl8rSGEyJXjOsxQ2ygxu3R8-5qJpypkOEqkwyg',
    LogAdmMsg = '---------------------1082538134664912946/XDWGiWUnPFxyhqnphsZGT1zZp7aH7rZ8yUP-0Fqsdr_AsDc1E5E5hlsXt96WNm-80gia',
    LogEnviarDinheiro = '---------------------1082538387510153257/8Q9xHSoss3D9EXcWwvtkAsj3aTpexw7pzcrt93pdyaXNh6UgBc3XlrQmr7YfrZAZb-UL',
    LogSalario = '---------------------1082538476379066468/JZhygaayhSKCmHhooC38HdfuigH9gSOp4CXaOBthhWLt38K-xAc5bKjMUkBsIjlNgmOv',
    LogCobrar = '---------------------1082538556192477187/63KCltLd07AEd3x7Yb02uiI07kjkKNW2P6E-FNi65CUypS8Ya_GjaL5bkD-9kTnlt9Ck',
    LogChamadosFeitos = '---------------------1082541837799141426/O36FG9R_NcEEiONP1jfgi_aA3NDmqCzZ5BqCi3LGsLC7nSA-sM-NsE4prWnkmsmCpI2_', 
    LogChamadosAtendeu = '---------------------1082541897844789268/Jx8TnO2aifuisZoY8mxZcnSDEMQswPo93lUS6yFkhwSyczQRD4YNpi90GSV6vGYGnqXL',
    LogDenuncia = '---------------------1082541610618851389/22LbeRjoS76RYtsCsZ66GkaZybGT9oJ2mnwo7aLQvsqXq4EldY2MlMiUK3LZiF8IK8o9',
    LogFinalizar = '---------------------1082541430796460083/5Z5EAIAmjCxSCgGc7J3gCF0koFOm2pFLtMOYanPV7eZ_qrgYGRNXNddGKUqLC5Wj1gGO',
    LogSocorro = '---------------------1082541049379028992/v8OgaK3F54CZpXniZ7GhkQ0jgdgPiUDDYequ4K7XHA-1Dx50eKrsalBtK6rEg6IueGI9',
    LogDumpDinheiro = '---------------------1082541240580583436/9bu7oIR_kSD-3uG_Vr-k0mL95cma0SilMHaaNll6RlecLW5EPrJxqEO4LXLouOVYqMAG',
    LogCapuz2 = '---------------------1082541337062162482/JdhB_sl9OapLcixl2K1NYUXs7ufgmMJJodWOh16uJDMEy_vZKZfnrQ2NUu8ut4dyZxYk',
    LogChat = '---------------------1082538878809939988/mSBbSY288o4SwHTS5KNNhROaETH2z5VR70RpSIVKSJvpmQTgpLSdkfcc5YpZV8s3gJbJ',
    LogMorte = '-------------1093232871801618653/ah9UwnCcF73jvMVMHFsc11dH0jlAtNu577Gv58RgRfBycP-XndU_Ez9b6tmYannNuqCR',
    LogAddCoins = '---------------------1082539118283722873/ey-563kFX7Z5isImTeUNK6-Sftr1fpqQy3NJRDQouICQfA7zwIc04_AkdSTGn6j_w-IU',
    LogBuyCoinsGame = '---------------------1082539229562810388/kPGvZfliQtCizJLIAl9ifE8M487BwGswPmU3IcxzIqrqIKnD0CERWHsYEW1lgBtj3T5O',
    LogReset = '---------------------1082539380729724938/zvRtYP-JMFTYQNEj7cSVIRhnxNNTg836nwse0-RZNted_TS3LDdjOATJ4Ql1d-LXIHCV',
    LogCrash = '---------------------1082539601241059370/MRkivr3-aY3BrS3WNUU9a3tRWhmCQbg1c1EQ3ojwAIKx-ZKMyZKL-YFFNXjHzrfxkDlY',
    LogComandoFesta = '---------------------1082539743545397310/me_NZq-lAGyAc8LGU--mXy0sOazPJoK55n5nx57ooAXykjxD3y9xxp9Ep1PMTxOy7zT4',
    LogHackButton = '---------------------1082539813191823380/BNbfL1lgRjmeYkWuZCsQeVzfhDJTWRPf5_9gAKEJzhJb96fIG4Hk4THXMNjAYonLIKxV',
    LogDm = '---------------------1082540054032961566/f7vEbopxjbSKkn7FPDDWf8V07cjR76cH5Jmu65feEoiXCOa1kuEin4AtuketL9mV_jvJ',
    LogTp = '---------------------1082540199617237012/fgFnTLtk3VzvZfc3u5v6Ynob2XoyLS1bV5Qe_7NJdQFggtxkkFRxQf3RuoMQf-zFLn4m',
    LogGod = '---------------------1082539870381146182/9KYbmh30LCWrO5AJvL_uNfe7YQ95bZAspXzjmm-rPxKkR-di3sjEAUZwsNcqioL811TH', 
    LogAdmin = '---------------------1082540305162706984/nxyCuNMFUY_L05MYtFpPdJpFhw4HCnQA5KEyccqMXCkyc9lw8MYrBHASA6izTm2fftO4',
    LogAnunciosEms = '---------------------1082540619660001280/m8Jh_KdSenyNu_1b9-ZiDnD0McOPgDbzpe0DBJtot4XdHjgpfdQPIHbPxVibTD9kYtJX',
    LogSpawnVeiculo = '---------------------1082540470372159579/XBr5vvcTbSdsc1imevZXj-rZ9Q0wTl2hBwog0ZdoPo1G2idlQmbrD8i3U808ovlPeSD8',
    LogCL = '---------------------1082539942498017371/6Ub8bFfwDfg9HsX54PMAyu_1iPGxjmn3iglLs2OpVujZbPO1A_gWgV0QZP1M7VPrx_o_',

    --- arsenal policia
    LogClear = '---------------------1082540917480771686/ccrwu4Jyn3K2aZFms9kXXZKXyLUIDiDkocCPhbHLGRLHuxTNPdL2-Au52qWmdYUvRM2Z',
}

function sendLog(channel,message,bool)
    local webhookLink = channels[channel]
    if not webhookLink then
        print('Log não enviada. Webhook não declarada corretamente ou nome do canal incorreto.')
        return
    end
    if bool then
        message = '```prolog\n'..message..'\r```'
        requestSendLog(webhookLink, message)
    else
        requestSendLog(webhookLink, message)
    end
end

function requestSendLog(webhookLink, message)
    PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
end

function addWebhook(channel, webhooLink)
    channels[channel] = webhookLink
end