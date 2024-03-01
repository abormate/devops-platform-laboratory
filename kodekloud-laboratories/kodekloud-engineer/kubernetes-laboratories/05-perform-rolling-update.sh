# ------------------------------------------ #
#
# -- Perform Rolling Update -- Kubernetes --
#
# ------------------------------------------ #

: '
We have an application running on Kubernetes cluster using nginx web server. The 
Nautilus application development team has pushed some of the latest changes and those 
changes need be deployed. The Nautilus DevOps team has created an image nginx:1.17 with 
the latest changes.

Perform a rolling update for this application and incorporate nginx:1.17 image. The 
deployment name is nginx-deployment

Make sure all pods are up and running after the update.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes 
cluster.

'

kubectl get deployment

kubectl describe deployment nginx-deployment

kubectl edit deployment nginx-deployment

kubectl get deployment

kubectl get pods

kubectl describe pods


