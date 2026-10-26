#!/bin/bash
cd hellosleepyworld
cd ..

podman kube down eap-apache.yml
rm eap/hellosleepyworld.war -f

echo "If you don't use them anymore remove images from podman."
