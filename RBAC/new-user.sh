#!/bin/sh

# on the node ( which the new user want to access to the cluster through it ) : 
# introduce the cluster ( to the server )  :  set the cluster IP and cluster chain
kubectl config set-cluster kubernetes-dev --certificate-authority=ca.crt --embed-certs=true --server=https://192.168.47.131:6443

# introduce the user
kubectl config set-credentials arya --client-certificate=arya.crt --client-key=arya.key --embed=certs=true

# connect user to the cluster
kubectl config set-context kubernetes-dev --cluster=kubernetes-dev --user=arya

# switch to the context
kubectl config use-context kubernetes-dev


