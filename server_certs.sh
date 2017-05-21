#!/bin/bash
HOST=$1
IP=$2
DIR=docker-certs/$HOST
mkdir -p $DIR
if [ -z $USE_DOCKER ]
then
  echo 'not using docker'
  cd $DIR
  DOCKER_CMD=''
else
  echo 'using docker'
  DOCKER_CMD="docker run --rm -it -v `pwd`:/certs -w /certs/$DIR centurylink/openssl"
fi

$DOCKER_CMD openssl genrsa -out server-key.pem 4096
$DOCKER_CMD openssl req -subj "/CN=$HOST" -sha256 -new -key server-key.pem -out server.csr
$DOCKER_CMD sh -c "echo subjectAltName = DNS:$HOST,IP:$IP,IP:127.0.0.1 > extfile.cnf"
$DOCKER_CMD openssl x509 -req -days 365 -sha256 -in server.csr -CA ../ca.pem -CAkey ../ca-key.pem -CAcreateserial -out server-cert.pem -extfile extfile.cnf

if [ -z $USE_DOCKER ]
then
  cd -
fi
rm -rf $DIR/server.csr $DIR/extfile.cnf
