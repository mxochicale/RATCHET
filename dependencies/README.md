# Creating virtual environments

## Install [uv](https://github.com/astral-sh/uv): "An extremely fast Python package manager".
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Create and acvivate venv
```
cd ~/root path of the repo
# uv init --python 3.10 # This creates pyproject.toml 
uv venv .venv --python 3.10 # Create a virtual environment at .venv.
source .venv/bin/activate
uv sync # installs dependencies
```

## Errors
python 3.12 and latest version of mainly tensorflow
```
#uv pip install imageio==2.37.2 matplotlib==3.10.7 numpy==2.3.4 pandas==2.3.3 scikit-image==0.25.2 streamlit==1.51.0 tensorflow==2.20.0 tokenizers==0.22.1 tqdm==4.67.1
#ValueError: File format not supported: filepath=checkpoints/RATCHET.tf. Keras 3 only supports V3 `.keras` and `.weights.h5` files, or legacy V1/V2 `.h5` files.
```
> The error you're encountering is because Keras 3 has stricter file format requirements. Your model files were likely saved in a format that's not directly compatible. 

