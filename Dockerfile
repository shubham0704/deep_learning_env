FROM continuumio/miniconda3:latest

ENTRYPOINT ["/bin/bash"]

WORKDIR /workspace

COPY env36.yml /workspace/env36.yml

RUN conda env create -f env36.yml

