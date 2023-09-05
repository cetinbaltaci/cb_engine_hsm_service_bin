#Clone Project
git clone https://github.com/cetinbaltaci/cb_engine_hsm_service_bin.git

Go dproject directory
#Start app_server(HSM + Nginx HSM Module) and web_server(Nginx + Openssl engine)
docker-compose up 

#Test
openssl s_client -connect localhost:4443 -tls1_2 -CAfile ./disk/etc/certs/ca.crt -showcerts -debug
