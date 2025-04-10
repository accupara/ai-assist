#!/bin//bash

pip install unsloth "xformers==0.0.28.post2" --break-system-packages
pip uninstall unsloth -y --break-system-packages && pip install --upgrade --no-cache-dir "unsloth[colab-new] @ git+https://github.com/unslothai/unsloth.git" --break-system-packages
sudo apt install libnccl2 libnccl-dev -y
sudo chown -R admin:admin /home/admin/.cache
sudo apt-get -y install cudnn9-cuda-12

echo "-----------------------------------"
echo "Starting the fine tune process now.."
echo
echo
python3 llama_3_2_1b+3b_conversational_+_2x_faster_finetuning.py