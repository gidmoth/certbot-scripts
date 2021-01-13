# certbot-scripts

This are some scripts to get letsencrypt-certs on containerbased systems.

The scripts just use the Image to get a wildcard-cert for a domain, check if
one is there, or renew it. The certs will be placed in named volumes of your
container-runtime which you can mount in other containers to use them. You can
safely replace `podman` with `docker` in the scripts and ignore the reminder to
run as root (dockerd runs as root anyways).

You could also just look at the scripts to see the right certbot-commands. They
are written for a situation where you want wildcard-certs but your dns-provider
has no means to update the zonefile programmatically.

Of course you will need to replace the domainname and email according to your
env.

