#sahid malik
from pyrogram import Client, filters

@Client.on_callback_query(filters.regex(r"^malik"))
async def next_page(bot, query):
    ident, req, key, b_offset = query.data.split("_")
    if int(req) not in [query.from_user.id, 0]:
        return await query.answer(f"⚠️ Hey, {query.from_user.first_name}.. \n\nSearch Your Own File, \n\n⚠️ Don't Click Others Results 😬", show_alert=True)
