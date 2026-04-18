# jupyter-pytorch-ai

Small derived Jupyter image built on top of `quay.io/jupyter/pytorch-notebook`.

## What It Adds

- `jupyter-ai`
- `jupyter-ai-jupyternaut`
- `jupyter-ai-litellm`
- `langchain-openai`
- `@openai/codex`
- `@zed-industries/codex-acp`
- `nodejs`

## Base Image

The pinned upstream base image tag lives in [`BASE_TAG`](./BASE_TAG) and is also
copied into the `Dockerfile` as the default value for `ARG BASE_TAG`.

Current base image:

```text
quay.io/jupyter/pytorch-notebook:2026-04-13
```

Published image target:

```text
ghcr.io/faisal-memon/jupyter-pytorch-ai
```

## Build Locally

```bash
docker build -t jupyter-pytorch-ai:local .
```

## Automation

This repo is intended to use two GitHub Actions workflows:

- `build.yaml` publishes the image when changes land on `main`
- `update-base-image.yaml` checks Quay for a newer dated upstream tag and opens a PR when one is available

The update workflow is intentionally PR-based so upstream image bumps are reviewed before a new image is published.
