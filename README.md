# Get started with OpenTelemetry on linux/s390x
Use this repositroy to get started with OpenTelemerty on a single linux/s390x virtual machine.

# Create VM on s390x
Following the instructions in the [README.md](https://github.com/rrschulze/ibm-cloud-s390x-single-vm/) of repository [ibm-cloud-s390x-single-vm](https://github.com:/rrschulze/ibm-cloud-s390x-single-vm)

# Run observability tools
To install prometheus, jaeger, loki and grafana, perform these steps:
1. Logon to the virtual machine created in the previous step: <br/>
`ssh -l labuser <ipv4_address>`
2. `git clone https://github.com/rrschulze/otel-linux-s390x-get-started`
3. `cd https://github.com/rrschulze/otel-linux-s390x-get-started`
4. `sudo docker compose up -d`
5. Verify containers are up with `sudo docker ps`

# Access observability tools
The tools can be accessed under the following links:
1. Jaeger UI: `https://<ipv4_address>:16686/`
2. Prometheus UI: `https://<ipv4_address>:9090/`
3. Grafana UI: `https://<ipv4_address>:3000/`

# Automatic instrumentation with java








# Code instrumentation with cpp
Build the opentelemetry-cpp project:


