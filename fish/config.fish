#set -x TAGHUB_DEV_API /srv/smart/th3
#set -x TAGHUB_KEYS /srv/smart/keys 
#set -x TAGHUB_CLOUD development 
#set -x TAGHUB_ENVIRONMENT development
#set -x DOCKER_HOST tcp://192.168.59.103:2375
#set -x DOCKER_CERT_PATH /Users/asbjorn/.boot2docker/certs/boot2docker-vm
#set -x DOCKER_TLS_VERIFY 1
set -x GOPATH /srv/go
set -x PATH $PATH /usr/local/share/npm/bin $GOPATH/bin /srv/smart/bin /srv/smart/terraform_bin /srv/google-cloud-sdk/bin
set -x LANGUAGE en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LC_TYPE en_US.UTF-8
