# Textgen Bangla — বাংলায় চলা লোকাল LLM চ্যাট

Bangla-first setup for oobabooga's text generation web UI, built on **oobabooga/textgen**.

- **Original repo:** https://github.com/oobabooga/textgen (open-source desktop app for local LLMs — text, vision, tool-calling, OpenAI/Anthropic-compatible API, 100% private)

## কী আছে / What is inside

- `bangla-assistant.yaml` — a Bangla assistant character for textgen: replies in Bangla by default, Banglish if you write Banglish, short answers first, code explained in Bangla.
- `start-bangla.sh` — starts textgen with a good Bangla model (Qwen2.5-7B-Instruct) and opens the chat UI.

## যা ঠিক করা হয়েছে / What was fixed

- **Repo moved:** the old name `oobabooga/text-generation-webui` no longer exists — the project is now `oobabooga/textgen`. Old links and old install guides point at a redirect. This README uses the current name and URL.
- Upstream ships with no Bangla behaviour — the default assistant answers in English. The character file adds the Bangla system prompt, greeting and example dialogue, so the same local model speaks Bangla out of the box.
- The start script pins a model with strong Bangla support (`Qwen2.5-7B-Instruct`) instead of leaving the model choice to trial and error.

## ব্যবহার / How to use

```bash
# 1. Install textgen (from the upstream README)
git clone https://github.com/oobabooga/textgen.git
cd textgen
./start_linux.sh   # first run downloads the UI deps

# 2. Download the Bangla model (inside textgen: Model tab, or with huggingface-cli)
#    Model: Qwen/Qwen2.5-7B-Instruct

# 3. Copy the Bangla assistant character into textgen
cp bangla-assistant.yaml textgen/characters/bangla-assistant.yaml

# 4. Start with the Bangla setup
./start-bangla.sh
#    then open http://127.0.0.1:7860, pick character "bangla-assistant"
```

No API key, no account — everything runs on your own computer.
