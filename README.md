# hf-docker
Testing building a Docker container that pulls a model from HuggingFace

This repo builds a docker container that contains a public HuggingFace model.
The https://huggingface.co/johnbradley/TestModel2 hugging face repo is
cloned using git lfs when building the docker container. The docker
container is a multi-stage build where the first stage just downloads
the model data. The second stage specifies the desired image and
copies the model data from the first stage.
