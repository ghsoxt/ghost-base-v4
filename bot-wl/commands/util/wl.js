const Discord = require('discord.js');
const config = require('../../config.json');


module.exports = {
    name: "whitelist",
    description: "Iniciar sistema de Whitelist",
    type: 'CHAT_INPUT',

    run: async (client, message, args) => {

      if (!message.member.permissions.has("ADMINISTRATOR")) return;

      let embed_painel = new Discord.MessageEmbed()
      .setColor(`${config.cor}`)
      .setAuthor(`${config.nomeServidor} - Sistema de Liberação`,message.guild.iconURL({ dynamic: true }))
      .setDescription(`
   • Para realizar a liberação do seu **ID** basta reagir no botão e mandar o seu **ID**
   • Caso ocorra algum problema contacte a **STAFF**
   • Caso não saiba o ip, basta pega-lo em <#${config.idconexao}>.`
      )

      let iniciar = new Discord.MessageActionRow()
            .addComponents(
                new Discord.MessageButton()
                    .setCustomId('wl')
                    // .setDisabled(true)
                    .setLabel('Liberar ID')
                    .setEmoji('971636207173926912')
                    .setStyle('SECONDARY'),
                new Discord.MessageButton()
                    .setCustomId('reset')
                    // .setDisabled(true)
                    .setLabel('Resetar ID')
                    .setEmoji("1031976377395720312")
                    .setStyle('SECONDARY')
            )

      message.channel.send({ embeds: [embed_painel], components: [iniciar]})
      message.reply({
        content: "Sistema de liberação iniciado!",
        ephemeral: true
    })
  }
}