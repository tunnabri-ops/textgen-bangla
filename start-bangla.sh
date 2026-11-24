#!/usr/bin/env bash
# start-bangla.sh — textgen চালু করুন বাংলা মডেল সহ
# আগে textgen ইনস্টল করুন (README দেখুন) এবং Qwen2.5-7B-Instruct মডেলটি ডাউনলোড করুন।
set -e
cd "$(dirname "$0")"
MODEL="${MODEL:-Qwen2.5-7B-Instruct}"
echo "মডেল: $MODEL — http://127.0.0.1:7860 এ খুলবে"
python3 server.py --model "$MODEL" --chat --character bangla-assistant
