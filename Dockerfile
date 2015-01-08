FROM ubuntu:14.10 
RUN apt-get update
RUN apt-get -y install git dnsutils curl 
RUN apt-get -y install fish man-db
RUN apt-get -y install vim
RUN mkdir /root/.vim
RUN cd /root/.vim && mkdir backups && mkdir swaps && mkdir undo && mkdir bundle
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ADD fish /root/.config/fish
ADD vimrc /root/.vimrc
ADD gitconfig /root/.gitconfig
ENV LANG C.UTF-8
WORKDIR /root
ENTRYPOINT ["fish"]
