# OpenTelemetry Demo + Instana

This repository provides helm values files for installing the official [OpenTelemetry Demo](https://github.com/open-telemetry/opentelemetry-demo) project on Kubernetes. This project uses custom images built using our [fork](https://github.com/styblope/opentelemetry-demo) of the project. You can also pull the code and build your own images or run the project using docker-compose.

# QuickStart

## Prerequisites

1. A Kubernetes Cluster
2. `kubectl` + `helm` 
3. An Instana Account ([Free Trial](https://instana.com/trial))

## Configuration

Set environment variables for convenience:

```
export INSTANA_AGENT_KEY=[YOUR INSTANA AGENT KEY]
export INSTANA_DOWNLOAD_KEY=[YOUR INSTANA DOWNLOAD KEY]
export INSTANA_ENDPOINT_HOST=[YOUR INSTANA AGENT KEY]
```

## Install the Instana Agent

`./install-agent-via-helm.sh otel-demo`

This script sets a few values to enable OpenTelemetry support and includes the custom configuration.yaml from `instana-agent-values.yaml` to disable various Instana AutoTracers.

## Install the OTel Demo

With Collector:

`helm install my-otel-demo open-telemetry/opentelemetry-demo --values otel-demo-collector-plus-agent.yaml`

Without Collector:

`helm install my-otel-demo open-telemetry/opentelemetry-demo --values otel-demo-instana-agent-only.yaml`

