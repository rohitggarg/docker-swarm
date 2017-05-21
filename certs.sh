#!/bin/bash
DIR=docker-certs/
mkdir -p $DIR
if [ -z $USE_DOCKER ]
then
  echo 'not using docker'
  cd $DIR
  DOCKER_CMD=''
else
  echo 'using docker'
  DOCKER_CMD="docker run --rm -it -v `pwd`/$DIR:/certs -w /certs centurylink/openssl"
fi

$DOCKER_CMD openssl genrsa -aes256 -out ca-key.pem 4096
$DOCKER_CMD openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -out ca.pem
$DOCKER_CMD openssl genrsa -out key.pem 4096
$DOCKER_CMD openssl req -subj '/CN=client' -new -key key.pem -out client.csr
$DOCKER_CMD sh -c "echo extendedKeyUsage = clientAuth > extfile.cnf"
$DOCKER_CMD openssl x509 -req -days 365 -sha256 -in client.csr -CA ca.pem -CAkey ca-key.pem -CAcreateserial -out cert.pem -extfile extfile.cnf
if [ -z $USE_DOCKER ]
then
  cd -
fi
rm -rf $DIR/client.csr $DIR/extfile.cnf
