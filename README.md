# gcloud-sdk-container-tools

Manipulation tools for the Google Cloud SDK in Docker Containers

## DISCLAIMER

*THIS SOFTWARE IS NOW ALPHA QUALITY.*

*PLEASE USE IN YOUR OWN RISK.*

## How to use

### 1. Pull latest

    $ git clone git@github.com:ytnobody/gcloud-sdk-container-tools.git
    $ cd gcloud-sdk-container-tools

### 2. Create your new GCP Service-Account

Let us go `https://console.developers.google.com/project/[YOUR_PROJECT_ID/apiui/credential` and create new GCP Service-Account.

Then, *Don't you forget downloading  private key file IN JSON FORMAT!!!*

### 3. Build your Service-Account Container

    $ ./bin/create-gcloud-account-container.sh \
        [E-mail of your GCP Service Account] \
        [Your Project-ID] \
        [Private Key File(JSON) Path of your GCP Service Account]


### 4. Start Containers

    $ ./bin/start-containers.sh

### 5. Execute your gcloud/bq command through gcloud container

    $ sudo docker exec gcloud bq query 'SELECT ... ;'

### 6. Shutdown and Remove Containers

    $ ./bin/stop-containers.sh


