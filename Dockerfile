FROM ubuntu:14.10 
RUN apt-get update
RUN apt-get -y install git dnsutils curl 
RUN apt-get -y install fish man-db
RUN apt-get -y install vim
ADD fish /root/.config/fish
ADD vimrc /root/.vimrc
ADD gitconfig /root/.gitconfig
ENTRYPOINT ["fish"]
