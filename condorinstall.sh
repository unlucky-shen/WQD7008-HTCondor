#!/bin/bash

set -e

# Update System
sudo apt update

# Official HTCondor via curl cpmmand
curl -fsSL https://get.htcondor.org | sudo /bin/bash -s -- --no-dry-run

# Check condor status
condor_status

# Check condor query
condor_q

