# 💬 Textgen Bangla

[![Bangla](https://img.shields.io/badge/UI-Bangla%20%2B%20English-orange)](#)

**A Bangla-speaking assistant for a local LLM chat app — chat in Bangla, in your browser, on your own computer, with no API key.**

> বাংলা সংস্করণ নিচে আছে। / Bangla version below.

## ✨ Features

- `bangla-assistant.yaml` — a Bangla assistant character: replies in Bangla by default, in Banglish if you write Banglish, short answers first, code explained in Bangla, and says so in Bangla when it does not know something.
- `start-bangla.sh` — starts the chat UI with a strong Bangla model (`Qwen2.5-7B-Instruct`) and the Bangla character; open `http://127.0.0.1:7860` and pick the character `bangla-assistant`. Set `MODEL` to use a different model.
- `api-bangla.sh` — starts the same setup in API mode: an OpenAI-compatible API at `http://127.0.0.1:5000/v1/chat/completions`, so any OpenAI-style client can talk to your local model.

## 🚀 How to use

```bash
# 1. Install the textgen chat app on your computer and download
#    the Qwen2.5-7B-Instruct model (Model tab, or with huggingface-cli)

# 2. Copy the Bangla assistant character into the app
cp bangla-assistant.yaml textgen/characters/bangla-assistant.yaml

# 3. Start the Bangla chat
./start-bangla.sh
#    then open http://127.0.0.1:7860, pick character "bangla-assistant"

# Or run it as an API server instead
./api-bangla.sh
#    test: curl http://127.0.0.1:5000/v1/chat/completions \
#      -H "Content-Type: application/json" \
#      -d '{"model": "Qwen2.5-7B-Instruct", "messages": [{"role": "user", "content": "বাংলাদেশের রাজধানী কোনটি?"}]}'
```

## ⚠️ Honest limits

- You need the textgen app installed and a model downloaded (several GB) — this repo is the Bangla character and the start scripts, not the app or the model itself.
- Everything runs on your own computer, so speed depends on your hardware (CPU or GPU) and the model size.
- The assistant answers in Bangla by design; write in English if you want an English reply.

## 🇧🇩 বাংলা

**Textgen বাংলা — নিজের কম্পিউটারে বাংলায় চলা AI চ্যাট।**

- `bangla-assistant.yaml` — বাংলা সহকারী: ডিফল্টে বাংলায় উত্তর দেয়, বাংলিশ লিখলে বাংলিশে দেয়।
- `./start-bangla.sh` — চ্যাট UI চালু করে (`http://127.0.0.1:7860`), মডেল Qwen2.5-7B-Instruct।
- `./api-bangla.sh` — API মোডে চালায় (`http://127.0.0.1:5000/v1/chat/completions`)।
- কোনো API key লাগে না, কোনো অ্যাকাউন্ট লাগে না — সব আপনার নিজের কম্পিউটারেই চলে।

## 📄 License

MIT — use it however you like; credit is appreciated.
