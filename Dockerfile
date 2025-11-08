FROM python:3.10.19-slim
RUN pip install imageio matplotlib numpy==1.23.5 pandas scikit-image streamlit tokenizers tqdm tensorflow==2.11.0


# Install system dependencies and clean up in single layer
RUN apt-get update && apt-get install --no-install-recommends -y \
    git \
    vim \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean


# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir \
    imageio \
    matplotlib \
    numpy==1.23.5 \
    pandas \
    scikit-image \
    streamlit \
    tokenizers \
    tqdm \
    tensorflow==2.11.0


# Create application directory and set working directory
WORKDIR /RATCHET

# Copy application code
COPY . .

# Create directories (use absolute paths)
RUN mkdir -p /RATCHET/inp_folder /RATCHET/out_folder
