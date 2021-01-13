#!/bin/bash

# Must be run as root to get the volumes right:
# on fedora coreos you get private volumes if
# you run this as normal user

podman run --rm -it --name certbot \
  --volume=certbot_var-lib-letsencrypt:/var/lib/letsencrypt \
  --volume=certbot_etc-letsencrypt:/etc/letsencrypt \
  certbot/certbot certificates

