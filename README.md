# Get started with OpenTelemetry on linux/s390x
Use this repositroy o set up a tuturial environment for getting started with OpenTelemerty on linux/s390x.

# Create VM on s390x
- Following the instructions in the README.md of repository `https://github.com:/rrschulze/ibm-cloud-s390x-single-vm`

# Run observability tools
To install prometheus, jaeger, loki and grafana, perform these steps:
1. Logon to the virtual machine created in the previous step
2. `git clone https://github.com/rrschulze/ibm-cloud-s390x-single-vm`
3. `cd ibm-cloud-s390x-single-vm/tools`
4. `sudo docker compose up -d`
5. Verify containers are up with `sudo docker ps`

# Access observability tools
1. Jaeger UI: `https://<ipv4_address>:16686/`
2. Prometheus UI: `https://<ipv4_address>:9090/`
3. Grafana UI: `https://<ipv4_address>:3000/`
