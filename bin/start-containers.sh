#!/bin/bash

GCLOUD_DATA_CONTAINER_IMG=$USER/gcloud-account
GCLOUD_DATA_CONTAINER=gcloud-account
GCLOUD_CONTAINER_IMG=ytnobody/gcloud
GCLOUD_CONTAINER=gcloud

sudo docker run --name $GCLOUD_DATA_CONTAINER -dt $GCLOUD_DATA_CONTAINER_IMG
sudo docker run $* --name $GCLOUD_CONTAINER --volumes-from $GCLOUD_DATA_CONTAINER -dt $GCLOUD_CONTAINER_IMG

