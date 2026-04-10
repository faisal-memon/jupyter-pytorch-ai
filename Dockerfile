ARG BASE_TAG=2026-03-23
FROM quay.io/jupyter/pytorch-notebook:${BASE_TAG}

ENV NPM_CONFIG_PREFIX=/home/jovyan/.local/npm
ENV PATH=/home/jovyan/.local/npm/bin:${PATH}

RUN mamba install -y nodejs \
 && mamba clean --all -f -y \
 && npm install -g @openai/codex @zed-industries/codex-acp \
 && pip install --no-cache-dir \
    jupyter-ai \
    jupyter-ai-jupyternaut \
    jupyter-ai-litellm \
    langchain-openai
