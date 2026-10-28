# Testcase for 100-continue mod_proxy_cluster EAP8 problem
This was already discribed in [RedHat Solution 3170471](https://access.redhat.com/solutions/3170471).
But it is not limited to EAP6+EAP7 the problem persists in EAP8.
And it is not limited to HTTP-POST, all methods are affected.

So if you use JBCS with mod_proxy_cluster + EAP8. The default configurations of each product won't go hand in hand. Although the handler is implemented in Undertow EAP8 does not activate it by default.



# Prepare: 
You need a working installation of `openjdk-21`, `mvn` and `podman`.
You need to provide EAP8 installation zip file and jbcs-httpd24 zip file as discribed in [jboss-eap-8.1.0.zip.README](./eap/jboss-eap-8.1.0.zip.README) and [jbcs-httpd24-httpd-2.4.62-RHEL9-x86_64.zip.README](./web/jbcs-httpd24-httpd-2.4.62-RHEL9-x86_64.zip.README).

`./podman-build.sh`

# Run
`podman kube play eap-apache.yml`

Wait a moment so eap nodes register to apache.


# Execute test
`./test.sh`

See logfile, one logfile is already included.

# Clean
`./clean.sh`
