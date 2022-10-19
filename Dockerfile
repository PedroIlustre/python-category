FROM python:3.10.2-slim

RUN useradd -ms /bin/bash python

#qual usuario teremos no container

#nao liberar o root, pois ele pode baixar uma imagem infectada
USER python 

WORKDIR /home/pedro/git/full_cycle

ENV PYTHONPATH=${PYTHONPATH}/home/pedro/git/full_cycle/src

CMD ["tail","-f","/dev/null"]