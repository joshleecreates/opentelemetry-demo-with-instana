#!/bin/bash

helm install instana-agent \
   --repo https://agents.instana.io/helm \
   --namespace instana-agent \
   --create-namespace \
   --set agent.key=$INSTANA_AGENT_KEY \
   --set agent.downloadKey=$INSTANA_DOWNLOAD_KEY \
   --set agent.endpointHost=$INSTANA_ENDPOINT_HOST \
   --set agent.endpointPort=443 \
   --set cluster.name=$1 \
   --set zone.name=$1 \
   --set service.create=true \
   --set opentelemetry.enabled=true \
   --values instana-agent-values.yaml \
   instana-agent
