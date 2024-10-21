
cd /app/backend

OLLAMA_MODELS=/mnt/aimodels
OLLAMA_HOST=0.0.0.0
echo "Starting ollama server with models: ${OLLAMA_MODELS}"
OLLAMA_HOST=0.0.0.0 OLLAMA_MODELS=/mnt/aimodels /bin/ollama serve &
sleep 10

echo "Following models are avaialble for inference:"
/bin/ollama list
echo "------"

#/bin/ollama pull qwen2.5-coder:latest
sudo ./start.sh
