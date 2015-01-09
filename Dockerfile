FROM ubuntu:14.10 
RUN apt-get update
RUN apt-get -y install git dnsutils curl 
RUN apt-get -y install fish man-db
RUN apt-get -y install vim tmux htop
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g npm
RUN npm install -g cccf-docker-instructions
RUN mkdir /root/.vim
RUN cd /root/.vim && mkdir backups && mkdir swaps && mkdir undo && mkdir bundle
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ADD fish /root/.config/fish
ADD vimrc /root/.vimrc
ADD gitconfig /root/.gitconfig
ADD scripts/installvimplugins /usr/local/bin/installvimplugins
ADD scripts/getdocker /usr/local/bin/getdocker
# SECRETS
ADD secrets/devcontainer_rsa /root/.ssh/id_rsa
ADD secrets/dockercfg /root/.dockercfg
ENV LANG C.UTF-8
WORKDIR /root
ENTRYPOINT ["fish"]
