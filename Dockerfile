ARG BASE_IMAGE

FROM $BASE_IMAGE

WORKDIR /workspace/stable-diffusion-3-medium

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m venv ./venv && \
    . ./venv/bin/activate && \
    pip install torch diffusers transformers accelerate sentencepiece gradio protobuf

# Copy HF models
COPY ./cache ./cache

COPY --chmod=755 scripts/* ./

CMD ["./start.sh"]
