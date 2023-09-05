
# Multitier HSM Service

This project includes HSM as a service (SoftHSM + Nginx Module) and Web Server (Nginx + OpenSSL_Engine). SoftHSM (disk/keystore/tokens) has PrivateKeys (server and ca) in it. PublicKeys(server.crt, ca.crt) are also found in disk/etc/certs.

## Clone Project

git clone https://github.com/cetinbaltaci/cb_engine_hsm_service_bin.git


## Build Dockers
docker-compose build

## Start Dockers
docker-compose up

## Test
openssl s_client -connect localhost:4443 -tls1_2 -CAfile ./disk/etc/certs/ca.crt -showcerts -debug
