// token =  1412478493:AAGyt1EsEjrJbVrwFIo5jPeEaWFn5Wm6ntc
const TelegramBot = require('node-telegram-bot-api');
const token = 'YOU_TOKEN';
const cy = "TechX";
const admin = "YOU_CHAT_ID"

const bot = new TelegramBot(token, { polling: true });

const key = require('./key')
const pool = require("./db")

bot.on('message', (msg) => {
    const chatId = msg.chat.id;
    const fn = msg.chat.first_name
    const ln = msg.chat.last_name
    const tx = msg.text

    if (tx == '/start') {
        bot.sendMessage(chatId, `Assalom alekum *${fn} ${ln}* . Siz *${cy}* jamoasi *Call Center* botiga xush kelibsiz .\n\n*yo'riqnoma : /help * `, {
            parse_mode: "Markdown",
            reply_markup: {
                resize_keyboard: true,
                keyboard: key.start
            }
        })
        return;
    }

    if (tx == 'Yo\'riqnoma 📄' || tx == '/help') {
        bot.sendMessage(chatId, `*Yo'riqnoma * : \n*Doyimiy savolar 💡* - Bosish orqali doyimiy sovolarga javob olishingiz mumkun .\n*Adminga murojat 📞* - Yetarli javob olinmaganda bu tugma orqali *Adminlarga * savol yuborish mumkun \n_(Javob vaqti maksimal 1kun )_ .  `, {
            parse_mode: "Markdown",
            reply_markup: {
                resize_keyboard: true,
                keyboard: key.start
            }
        })
        return;
    }


    if (tx == 'Doyimiy savolar 💡') {
        bot.sendMessage(chatId, `O'z savolingiz yozib yuboring . \n*Massalan* : C++ dasturlash tili haqida bo'sa . \n*Qidiring *: C++ yoki C++ dasturlash.`, {
            parse_mode: "Markdown",
            reply_markup: {
                resize_keyboard: true,
                keyboard: key.start
            }
        })

        return;
    }

    if (tx == 'Adminga murojat 📞') {
        bot.sendMessage(chatId, `*Admin*: \n*Telfon*: 9970548XX\n*Email*: otkir8311@gmail.com `, {
            parse_mode: "Markdown",
            reply_markup: {
                resize_keyboard: true,
                keyboard: key.start
            }
        })
        return;
    }


    if (tx && !msg.via_bot) {
        let ntx = "";
        for (i = 0; i < tx.length; i++) {
            ntx = ntx + "%" + tx[i];
        }
        ntx = ntx + "%"
        pool.query("SELECT * FROM call_center.questions where ques like ?  or ans like ?", [ntx, ntx], (err, rows, fields) => {
            if (err) { return; }
            if (rows.length == 0) {
                return bot.sendMessage(chatId, `😔 Hich narsa topilmadi .`, {
                    parse_mode: "Markdown",
                    reply_markup: {
                        resize_keyboard: true,
                        keyboard: key.start
                    }
                })
            }


            bot.sendMessage(chatId, '*Kalit*: ' + tx + '\n*Jami *: ' + rows.length + ' ta malumot topildi .', {
                parse_mode: 'Markdown',
                reply_markup: {
                    inline_keyboard: [
                        [{
                            text: "Savolga javob",
                            switch_inline_query_current_chat: tx
                        }],
                        [{
                            text: "Do'slarga ulashish",
                            switch_inline_query: tx
                        }]
                    ]
                }
            });
        })
    }
});


bot.on('inline_query', async(msg) => {
    if (!msg.query) { return; }
    const tx = msg.query
    let ntx = "";
    for (i = 0; i < tx.length; i++) {
        ntx = ntx + "%" + tx[i];
    }
    ntx = ntx + "%"
    let natija = []
    pool.query("SELECT * FROM call_center.questions where ques like ?  or ans like ?", [ntx, ntx], (err, rows, fields) => {
        if (err) { return; }
        for (let i = 0; i < rows.length; i++) {
            let arr = {
                type: 'article',
                id: rows[i].id,
                title: rows[i].ques,
                description: rows[i].ques,
                message_text: `*${rows[i].ques} ?.*\n\n_${rows[i].ans}_`,
                thumb_url: "https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/256x256/question.png",
                thumb_width: 15,
                thumb_height: 15,
                reply_markup: {
                    inline_keyboard: [
                        [{
                            text: "Do'slarga ulashish",
                            switch_inline_query: tx
                        }]
                    ]
                },
                parse_mode: "markdown"
            }
            natija.push(arr)
        }

        bot.answerInlineQuery(msg.id, natija, {
            cache_time: 0,
            switch_pm_parameter: "search",
            switch_pm_text: msg.query
        });

    })

})


bot.on("polling_error", (err) => console.log("xato"));