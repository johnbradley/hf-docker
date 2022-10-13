FROM alpine/git:2.36.2 AS model_fetcher

RUN mkdir -p /model \
    && git lfs install \
    && git clone https://huggingface.co/johnbradley/TestModel2 /model

FROM python:3.7.15-slim-buster

RUN mkdir -p /model
COPY --from=model_fetcher /model /model

CMD bash
