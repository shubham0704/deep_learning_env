FROM continuumio/miniconda3:latest

ENTRYPOINT ["/bin/bash"]

WORKDIR /workspace

COPY env36-cpu.yml /workspace/env36-cpu.yml

RUN conda env create -f env36-cpu.yml

