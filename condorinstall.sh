#!/bin/bash

set -e

# Update System
sudo apt update

# Official HTCondor via curl cpmmand
curl -fsSL https://get.htcondor.org | sudo /bin/bash -s -- --no-dry-run


