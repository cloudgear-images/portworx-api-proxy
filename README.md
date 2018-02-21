# Portworx API Proxy

We run the Portworx node API on the weave interface and this works great for gossip communication but the Kubernetes control plane does not have access when connecting to the portworx service.

Two workarounds are possible:

A) We create a manual service and add the endpoints of the portworx nodes manually which is not simple as we don't know the weave IPs during ctron setup.

B) We create a second DaemonSet running an nginx proxy pointing to the node address. This deployment allows to have overlay IP addresses and we can create a usual Kubernetes service for them which will pick up the two 

