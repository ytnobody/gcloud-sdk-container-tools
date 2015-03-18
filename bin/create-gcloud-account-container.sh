#!/bin/bash

CONTAINER_DIR=./docker-gcloud-account
GCLOUD_ACCOUNT=$1; shift
GCLOUD_PROJECT=$1; shift
GCLOUD_PRIVKEY=$1; shift

help () {
    cat <<EOF

  usage:
    $0 [E-mail of your GCP Service Account] [Your Project-ID] [Private Key File Path of your GCP Service Account]

EOF
    exit
}

if [ -z "$GCLOUD_ACCOUNT" ] ; then help ; fi
if [ -z "$GCLOUD_PROJECT" ] ; then help ; fi
if [ -z "$GCLOUD_PRIVKEY" ] ; then help ; fi

mkdir -p $CONTAINER_DIR/gcloud
cp $GCLOUD_PRIVKEY $CONTAINER_DIR/gcloud/
echo $GCLOUD_PROJECT > $CONTAINER_DIR/gcloud/project_id.txt
echo $GCLOUD_ACCOUNT > $CONTAINER_DIR/gcloud/account.txt

cat > $CONTAINER_DIR/Dockerfile <<EOF
FROM busybox
ADD gcloud /opt/gcloud
VOLUME /opt

CMD ["/bin/sh"]

EOF

sudo docker build -t $USER/gcloud-account $CONTAINER_DIR
