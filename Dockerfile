FROM ubuntu

RUN apt update 
RUN apt install gcc gfortran vim wget openmpi-bin openmpi-common libopenmpi-dev build-essential -y
RUN apt install -y

RUN wget https://github.com/Nek5000/Nek5000/archive/refs/tags/v19.0.tar.gz 
RUN tar -xvf v19.0.tar.gz


RUN chmod 777 -R /Nek5000-19.0 
RUN ln -s Nek5000-19.0 Nek5000
ENV PATH="$PATH:$HOME/Nek5000/bin"

RUN adduser nekuser
USER nekuser
RUN echo "PS1='\# \[\e[0;32m\]\u: \[\e[1;35m\]\W\[\e[0;m\] \[\e[1;32m\] \\$\[\e[0;m\]' " > $HOME/.bashrc
