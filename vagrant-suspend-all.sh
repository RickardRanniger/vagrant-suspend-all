#!/bin/bash

# Suspend all running vagrant machines in one command
#
# Author: Rickard Ranniger 2015

# Get all running vagrant boxes and suspend them.
vagrant global-status | awk '{if ($4 == "running") print $1;}' | xargs vagrant suspend

# Show global status and remove invalid entries
vagrant global-status --prune