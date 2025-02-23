#!/bin/bash

# Install Python dependencies
pip install -r /home/jupyter/requirements.txt

# Set up Kaggle API (if needed)
mkdir -p ~/.kaggle
cp /home/jupyter/scripts/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

# Download dataset (if needed)
kaggle datasets download -d <dataset-name> -p /home/jupyter/data/
unzip /home/jupyter/data/<dataset-name>.zip -d /home/jupyter/data/