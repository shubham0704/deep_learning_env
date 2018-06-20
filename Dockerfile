FROM continuumio/miniconda3:latest

ENTRYPOINT ["/bin/bash"]

WORKDIR /workspace

COPY env27.yml /workspace/env27.yml 
COPY env27-cpu.yml /workspace/env27-cpu.yml 
COPY env36.yml /workspace/env36.yml
COPY env36-cpu.yml /workspace/env36-cpu.yml

RUN conda env create -f env27.yml &&\ 
    conda env create -f env27-cpu.yml &&\ 
    conda env create -f env36.yml &&\
    conda env create -f env36-cpu.yml

