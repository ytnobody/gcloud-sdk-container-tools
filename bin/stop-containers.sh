#!/bin/bash

GCLOUD_DATA_CONTAINER=gcloud-account
GCLOUD_CONTAINER=gcloud

sudo docker kill $GCLOUD_DATA_CONTAINER && sudo docker rm $GCLOUD_DATA_CONTAINER 
sudo docker kill $GCLOUD_CONTAINER && sudo docker rm $GCLOUD_CONTAINER 

