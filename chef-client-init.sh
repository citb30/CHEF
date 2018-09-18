#!/bin/bash

NODENAME=$(hostname)
ENVIRONMENT=$(hostname | cut -c -6 | cut -c 4-)
sed -i -e "s/NODENAME/$NODENAME/" -e "s/ENVIRONMENT/$ENVIRONMENT/" /etc/chef/client.rb
chef-client -r role[stack]
