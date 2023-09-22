#!/bin/bash
echo "Container start"
python3 -c "from huggingface_hub.hf_api import HfFolder; HfFolder.save_token('$HUGGINGFACE_API_TOKEN')"
pip install gradio
python3 main.py --webui
echo "Container idle.."
tail -f /dev/null