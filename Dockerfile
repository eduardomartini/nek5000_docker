FROM ubuntu

RUN apt update 
RUN apt install gcc gfortran vim wget openmpi-bin openmpi-common libopenmpi-dev build-essential -y
RUN apt install -y

RUN wget https://github.com/Nek5000/Nek5000/archive/refs/tags/v19.0.tar.gz 
RUN tar -xvf v19.0.tar.gz

RUN adduser nekuser
RUN mv Nek5000-19.0 v19.0.tar.gz /home/nekuser
RUN chmod 777 -R /home/nekuser/Nek5000-19.0 
RUN ln -s /home/nekuser/Nek5000-19.0 /home/nekuser/Nek5000

USER nekuser
ENV PATH="$PATH:/home/nekuser/Nek5000/bin"

RUN echo "PS1='\# \[\e[0;32m\]\u: \[\e[1;35m\]\W\[\e[0;m\] \[\e[1;32m\] \\$\[\e[0;m\]' " > $HOME/.bashrc
