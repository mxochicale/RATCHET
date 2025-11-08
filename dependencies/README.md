# Creating virtual environments

## Install [uv](https://github.com/astral-sh/uv): "An extremely fast Python package manager".
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Create and acvivate venv
```
cd ~/root path of the repo
uv init --python 3.10
uv venv .venv --python 3.10 # Create a virtual environment at .venv.
source .venv/bin/activate
uv sync # This creates pyproject.toml and installs dependencies
```

Errors
```
#uv pip install imageio==2.37.2 matplotlib==3.10.7 numpy==2.3.4 pandas==2.3.3 scikit-image==0.25.2 streamlit==1.51.0 tensorflow==2.20.0 tokenizers==0.22.1 tqdm==4.67.1
#ValueError: File format not supported: filepath=checkpoints/RATCHET.tf. Keras 3 only supports V3 `.keras` and `.weights.h5` files, or legacy V1/V2 `.h5` files.
```

