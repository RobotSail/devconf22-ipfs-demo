#!/bin/bash

####################################################
# This script exists solely to display information #
# about the IPFS nodes that are running in AWS.    #
# You are free to disregard this                   #
####################################################

# set the IPFS IDs
NODE_1_IPFS_ID="12D3KooWGwVyMQiG6svhNEfA3Gtg9xGTG7V4Xe1cgLo6nZthSdnM"
NODE_2_IPFS_ID="12D3KooWF2R1573D17qwcEvd1Lp6zTcfXMGbE2tbrkd1Dter5KQr"

# Display the IPFS IDs as JSON
echo "{\"node_1_ipfs_id\":\"$NODE_1_IPFS_ID\",\"node_2_ipfs_id\":\"$NODE_2_IPFS_ID\"}" 