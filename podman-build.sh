#!/bin/bash
cd hellosleepyworld
mvn clean package
cd ..
cp hellosleepyworld/target/hellosleepyworld.war eap/

cd web
podman build -t web .

cd ../eap
podman build -t eap .
podman build -t eap-working -f Containerfile-working

