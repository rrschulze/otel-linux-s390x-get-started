# Get started with OpenTelemetry on linux/s390x
Use this repositroy to get started with OpenTelemerty on a single linux/s390x virtual machine.

# Create VM on s390x
Follow the instructions in the [README.md](https://github.com/rrschulze/ibm-cloud-s390x-single-vm/) of repository [ibm-cloud-s390x-single-vm](https://github.com:/rrschulze/ibm-cloud-s390x-single-vm) to create a virtual machine with linux/s390x architecture on IBM Cloud.

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
Perform the following steps to demonstrate automatic instrumentation with java
1. `sudo apt install openjdk-17-jdk`
2. `git clone https://github.com/spring-projects/spring-petclinic.git`
3. './mvnw package'
4. 'curl -L https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar --output otelagent.jar'
5. 'java -javaagent:./otelagent.jar -Dotel.service.name=s390x-tutorial -jar ./target/spring-petclinic-3.2.0-SNAPSHOT.jar'
6. Browse for the traces of the service service s390x-tutorial



# Enabling 


# Code instrumentation with cpp
Build the opentelemetry-cpp project:


