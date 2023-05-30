const Discord = require("discord.js");
const client = new Discord.Client({ intents: 32767 });
const config = require("./config.json");
const fs = require("fs");
const { QuickDB } = require("quick.db");
const db = new QuickDB();


client.login(config.token);

client.once("ready", async () => {
  console.log(`⚙ Estou ativo em ${client.user.tag}`);
});

//Handler
module.exports = client;
client.commands = new Discord.Collection();
client.slashCommands = new Discord.Collection();
client.config = require("./config.json");

require("./handler")(client);
const { glob } = require("glob");
const { promisify } = require("util");

const globPromise = promisify(glob);

client.on("interactionCreate", async (interaction) => {
  if (!interaction.guild) return;

  if (interaction.isCommand()) {
    const cmd = client.slashCommands.get(interaction.commandName);

    if (!cmd) return;

    const args = [];

    for (let option of interaction.options.data) {
      if (option.type === "SUB_COMMAND") {
        if (option.name) args.push(option.name);
        option.options?.forEach((x) => {
          if (x.value) args.push(x.value);
        });
      } else if (option.value) args.push(option.value);
    }

    cmd.run(client, interaction, args);
  }

  if (interaction.isContextMenu()) {
    await interaction.deferReply({ ephemeral: false });
    const command = client.slashCommands.get(interaction.commandName);
    if (command) command.run(client, interaction);
  }
});

const { Modal, TextInputComponent, MessageActionRow, MessageEmbed } = require("discord.js");

client.on("interactionCreate", async (interaction) => {
  if (interaction.customId === "wl") {
    const modal = new Modal();
    modal.setTitle(`${config.nomeServidor}`);
    modal.setCustomId("myModal");

    const textInput1 = new TextInputComponent()
      .setCustomId("test1")
      .setLabel("ID")
      .setPlaceholder('📝 Qual o seu ID')
      .setStyle("SHORT");

    const textInput2 = new TextInputComponent()
      .setCustomId("test2")
      .setLabel("NOME")
      .setPlaceholder('📝 Qual o nome do seu personagem')
      .setStyle("SHORT");

    const textInput3 = new TextInputComponent()
      .setCustomId("test3")
      .setLabel("SOBRENOME")
      .setPlaceholder('📝 Qual o sobrenome do seu personagem')
      .setStyle("SHORT");

    const action1 = new MessageActionRow().addComponents(textInput1);
    const action2 = new MessageActionRow().addComponents(textInput2);
    const action3 = new MessageActionRow().addComponents(textInput3);

    modal.addComponents(action1, action2, action3);

    await interaction.showModal(modal);
  }
});

const mysql = require("mysql");

client.on("interactionCreate", async (interaction) => {
  if (interaction.customId === "myModal") {
    const id = interaction.fields.getTextInputValue("test1");
    const nome = interaction.fields.getTextInputValue("test2");
    const sobre = interaction.fields.getTextInputValue("test3");

    let connection = mysql.createConnection({
      host: `${config.host}`, // IP da database. Se estiver em localhost deixe 127.0.0.1.
      user: `${config.user}`, // Usuario da database, padrao root.
      password: `${config.password}`, // Senha da database, padrao sem senha.
      database: `${config.database}`, // Nome da database.
    });

    let sql = `UPDATE vrp_users SET whitelisted = '1' WHERE id = '${id}'`; // Dando set no banco de dados.
    let sql2 = `UPDATE vrp_users SET discord = ${interaction.user.id} WHERE id = '${id}'`; // Dando set no banco de dados.
    let sql3 = `SELECT id FROM vrp_users WHERE id = '${id}'`; // Dando set no banco de dados.
    let sql4 = `SELECT whitelisted FROM vrp_users WHERE id = '${id}'`; // Dando set no banco de dados.
    let sql5 = `SELECT discord FROM vrp_users WHERE id = '${id}'`; // Dando set no banco de dados.
    let sql6 = `SELECT banned FROM vrp_users WHERE id = '${id}'`; // Dando set no banco de dados.

    connection.query(sql3, async function (err, result) {
      // Query da conexao.
      if (err) throw err;
      if (result[0]?.id) {
        proximo();
      } else {
        let idnaoexisti = new MessageEmbed()
            .setDescription(
              `${interaction.user} **ID** não encontrado no banco de dados!.`
            )
            .setColor(`${config.cor}`);
        await interaction.reply({ embeds: [idnaoexisti], ephemeral: true });
        return;
      }
    });

    async function proximo() {
      connection.query(sql6, async function (err, result) {
        // Query da conexao.
        if (err) throw err;
        if (result[0].banned == 0) {
          verificarwl();
        } else {
          console.log("banido");
          let banido = new MessageEmbed()
            .setDescription(
              `${interaction.user} Este **ID** esta **BANIDO** do servidor.`
            )
            .setColor(`${config.cor}`);
        await interaction.reply({ embeds: [banido], ephemeral: true });
          return;
        }
      });
    }

    async function verificarwl() {
      connection.query(sql4, async function (err, result) {
        // Query da conexao.
        if (err) throw err;
        if (result[0].whitelisted == 0) {
          verificardiscord();
        } else {
          let liberado = new MessageEmbed()
            .setDescription(
              `${interaction.user} Este **ID** já esta **LIBERADO** no servidor.`
            )
            .setColor(`${config.cor}`);
        await interaction.reply({ embeds: [liberado], ephemeral: true });
          return;
        }
      });
    }

    function darcargo() {
      connection.query(sql2);
      const person = interaction.member;
      person.roles.remove(`${config.semwl}`); // CARGO SEM WL
      person.roles.add(`${config.wl}`); // CARGO COM WL
      interaction.member.setNickname(`${id} | ${nome} ${sobre}`);
      connection.query(sql, async function (err, result) {
        // Query da conexao.
        if (err) throw err;
        let Whitelist = new MessageEmbed()
            .setDescription(
              `${interaction.user} **Whitelist** Liberada, Seja Bem-Vindo ao **${interaction.guild.name}**.`
            )
            .setColor(`${config.cor}`);
        await interaction.reply({ embeds: [Whitelist], ephemeral: true });
      });

      const logwl2 = interaction.guild.channels.cache.get(config.logwl);

      const logwl = new MessageEmbed()
        .setDescription(
          `${interaction.user} \`${interaction.user.id}\` Foi liberado e syncado com o id \`${id}\``
        )
        .setColor("#2f3136");

      logwl2.send({ embeds: [logwl] });
    }

    function verificardiscord() {
      connection.query(sql5, async function (err, result) {
        // Query da conexao.
        if (err) throw err;

        if (result[0].discord == "RESETADO") {
          darcargo();
        } else {
          if (result[0].discord == interaction.user.id) {
            darcargo();
          } else {
            let vincdc = new MessageEmbed()
            .setDescription(
              `${interaction.user} **ID** ja esta vinculado com outro **DISCORD**.`
            )
            .setColor(`${config.cor}`);
            await interaction.reply({ embeds: [vincdc], ephemeral: true });
            return;
          }
        }
      });
    }
  }

  let connection = mysql.createConnection({
    host: `${config.host}`, // IP da database. Se estiver em localhost deixe 127.0.0.1.
    user: `${config.user}`, // Usuario da database, padrao root.
    password: `${config.password}`, // Senha da database, padrao sem senha.
    database: `${config.database}`, // Nome da database.
  });

  if (interaction.isButton()) {
    if (interaction.customId.includes('reset')) {

      let id = interaction.user.id;

      let reset = interaction.guild.channels.cache.get(`${config.logreset}`);
      let sql = `UPDATE vrp_users SET whitelisted = '0' WHERE discord = '${id} '`;
      let sql2 = `UPDATE vrp_users SET discord = 'RESETADO' WHERE discord = '${id} '`;
      let sql3 = `SELECT discord FROM vrp_users WHERE discord = '${id}'`; // Dando set no banco de dados.

      connection.query(sql3, async function (err, result) {
        // Query da conexao.
        if (err) throw err;
        if (result[0]?.discord) {
          proximo();
      } else {
          let idnaoencotrado = new MessageEmbed()
            .setDescription(
              `${interaction.user} **ID** não encontrado no banco de dados!.`
            )
            .setColor(`${config.cor}`);
            await interaction.reply({ embeds: [idnaoencotrado], ephemeral: true });
          return;
        }
      });
    async function proximo() {
      connection.query(sql, function (err, result) {
        if (err) throw err;

        connection.query(sql2, function (err, result) {
          if (err) throw err;

          let aprovado = new MessageEmbed()
            .setDescription(
              ` | ${interaction.user} O seu **ID** foi resetado com sucesso, envie seu id novamente para ser liberado.`
            )
            .setColor(`${config.cor}`);

          let embed = new MessageEmbed()
            .setDescription(
              `${interaction.user} \`${interaction.user.id}\` Resetou seu **ID** com sucesso.`
            )
            .setColor(`${config.cor}`);

          interaction.reply({ embeds: [aprovado], ephemeral: true });

          reset.send({ embeds: [embed] });
        });
      });
    }
  }
  }
});

client.on("guildMemberRemove", async (interaction) => {
    let connection = mysql.createConnection({
      host: `${config.host}`, // IP da database. Se estiver em localhost deixe 127.0.0.1.
      user: `${config.user}`, // Usuario da database, padrao root.
      password: `${config.password}`, // Senha da database, padrao sem senha.
      database: `${config.database}`, // Nome da database.
    });

    let id = interaction.user.id;

    let sql = `UPDATE vrp_users SET whitelisted = '0' WHERE discord = '${id} '`;

    connection.query(sql, function (err, result) {
      if (err) throw err;


      const exit = interaction.guild.channels.cache.get(`${config.logsaiu}`);
      const embed = new MessageEmbed()
        .setDescription(
          `${interaction.user} \`${interaction.user.id}\` Teve sua whitelist removida após sair do discord.`
        )
        .setColor(`${config.cor}`);

      exit.send({ embeds: [embed] });
    });  
});

process.on("unhandledRejection", (reason, p) => {
  console.log(" [Anti-crash] :: Unhadled Rejection/Catch");
  console.log(reason, p);
});

process.on("uncaughtException", (err, origin) => {
  console.log(" [Anti-crash] :: Unhadled Rejection/Catch");
  console.log(err, origin);
});

process.on("uncaughtExceptionMonitor", (err, origin) => {
  console.log(" [Anti-crash] :: Uncaught Exception/Catch (MONITOR)");
  console.log(err, origin);
});

process.on("multipleResolves", (type, promise, reason) => {
  console.log(" [Anti-crash] :: Unhadled Rejection/Catch");
  console.log(type, promise, reason);
});

const eventFiles = fs
  .readdirSync("./events")
  .filter((file) => file.endsWith(".js"));

for (const file of eventFiles) {
  const event = require(`./events/${file}`);
  if (event.once) {
    client.once(event.name, (...args) => event.execute(...args));
  } else {
    client.on(event.name, (...args) => event.execute(...args));
  }
}