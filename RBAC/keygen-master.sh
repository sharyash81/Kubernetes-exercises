#!/bin/sh

# generate private key 
openssl genrsa -out arya.key 2048
# generate certificate signing request from private key
openssl req -new -key arya.key -out arya.csr -subj "/CN=arya/O=kubergroup"
# generate public key from CSR
openssl x509 -req -in arya.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out arya.crt
# paste the generated public , private key and ca.crt from the master to the server that the new user want to access to the cluster through it
scp arya.key arya@192.168.47.132:/home/arya
scp arya.crt arya@192.168.47.132:/home/arya
scp ca.crt arya@192.168.47.132:/home/arya
