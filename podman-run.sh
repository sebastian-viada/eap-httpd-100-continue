#!/bin/bash

podman network create --ignore eap8-apache-test
 
podman stop -i eap-default eap-working web

podman run --rm -d --network eap8-apache-test -p 8080:80 -p 8443:443 --name web web

podman run --rm -d --network eap8-apache-test --name=eap-default eap
podman run --rm -d --network eap8-apache-test --name=eap-working eap-working


