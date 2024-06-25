<div align="center">

# Docker image for Stable Diffusion 3 Medium Gradio

[![python](https://img.shields.io/badge/python-3.10-green)](https://www.python.org/downloads/)
[![cuda](https://img.shields.io/badge/cuda-12.4-green)](https://developer.nvidia.com/cuda-downloads)

<p align="center">
  <img src="assets/banner.PNG" />
</p>
</div>

## Tags
| Tag    | Description              | Size      |
| ------ | ------------------------ | --------- |
| latest | python 3.10, sd 3 medium | ~ 21.7 GB |

## Ports

| Connect Port | Internal Port | Description |
| ------------ | ------------- | ----------- |
| 8192         | 8192          | SD 3 Webui  |

## Running locally
```bash
docker run -d \
  --gpus all \
  -p 8192:8192 \
  yuvraj108c/sd-3-medium:latest
```

## Building the docker image
```bash
git clone https://github.com/yuvraj108c/stable-diffusion-3-medium-docker
cd stable-diffusion-3-medium-docker
docker-compose build latest
```

## Credits
https://huggingface.co/stabilityai/stable-diffusion-3-medium-diffusers/discussions/19