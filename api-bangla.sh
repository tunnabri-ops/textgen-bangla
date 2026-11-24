#!/usr/bin/env bash
# api-bangla.sh — textgen API মোডে চালু করুন + curl দিয়ে পরীক্ষা করুন
# textgen-এর OpenAI-compatible API: http://127.0.0.1:5000/v1/chat/completions
# ব্যবহার: ./api-bangla.sh
set -e
cd "$(dirname "$0")"
MODEL="${MODEL:-Qwen2.5-7B-Instruct}"
echo "API মোডে চালু হচ্ছে — মডেল: $MODEL"
echo "পরীক্ষা (আরেক টার্মিনালে):"
echo '  curl http://127.0.0.1:5000/v1/chat/completions -H "Content-Type: application/json" -d '"'"'{"model": "'"$MODEL"'", "messages": [{"role": "user", "content": "বাংলাদেশের রাজধানী কোনটি?"}]}'"'"
python3 server.py --model "$MODEL" --api --chat --character bangla-assistant
