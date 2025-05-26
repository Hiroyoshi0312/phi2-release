#!/data/data/com.termux/files/usr/bin/bash

# llama.cpp 初回セットアップ
pkg update -y
pkg install -y git cmake clang

git clone https://github.com/ggerganov/llama.cpp.git
cd llama.cpp
make

# モデルパス（アプリからDL済の場所）
MODEL_PATH="/data/data/com.termux/files/home/storage/shared/Download/phi-2.Q4_K_M.gguf"

# llama.cpp 実行（ローカルサーバーとして起動）
./main -m "$MODEL_PATH" -c 2048 --port 8000 --host 127.0.0.1
