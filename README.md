# Testcase for 100-continue Modcluster EAP8 Problem

You need a working installation of `openjdk`, `mvn` and `podman`.
You need to provide EAP8 installation zip file and jbcs-httpd24 zip file as discribed in /eap and /web

# Prepare: 
`./podman-build.sh`

# Run
`podman kube play eap-apache.yml`

Wait a moment so eap nodes register to apache


# Execute test
`./test.sh`

# Clean
`./clean.sh`
