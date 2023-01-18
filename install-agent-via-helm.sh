#!/bin/bash

helm install instana-agent \
   --repo https://agents.instana.io/helm \
   --namespace instana-agent \
   --create-namespace \
   --set agent.endpointHost=ingress-red-saas.instana.io \
   --set agent.endpointPort=443 \
   --set cluster.name='otel-demo-w-agent' \
   --set zone.name='narnia' \
   --set service.create=true \
   --set opentelemetry.enabled=true \
   --values instana-agent-values.yaml \
   instana-agent
