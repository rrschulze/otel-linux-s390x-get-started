#!/bin/bash

# download OTel collector
mkdir bin
cd bin
curl --proto '=https' --tlsv1.2 -fOL https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.105.0/otelcol_0.105.0_linux_s390x.tar.gz
curl --proto '=https' --tlsv1.2 -fOL https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.105.0/otelcol-contrib_0.105.0_linux_s390x.tar.gz
tar -xvf otelcol_0.105.0_linux_s390x.tar.gz
tar -xvf otelcol-contrib_0.105.0_linux_s390x.tar.gz
cd ..
./bin/otelcol-contrib --config=./config/collector/agent.yml