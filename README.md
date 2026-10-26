# Testcase for 100-continue Modcluster EAP8 Problem
This was already discribed in [RedHat Solution 3170471](https://access.redhat.com/solutions/3170471).
But it is not limited to EAP6+EAP7 the problem persists in EAP8.
And it is not limited to POST, all Methods affected.

So if you use JBCS with mod_proxy_cluster + EAP8. The default configuration doesn't go hand in hand. Although the handler is implemented in Undertow EAP8 does not activate it by default.



# Prepare: 
You need a working installation of `openjdk`, `mvn` and `podman`.
You need to provide EAP8 installation zip file and jbcs-httpd24 zip file as discribed in /eap and /web

`./podman-build.sh`

# Run
`podman kube play eap-apache.yml`

Wait a moment so eap nodes register to apache.


# Execute test
`./test.sh`

# Clean
`./clean.sh`
