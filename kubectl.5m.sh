#!/bin/bash
# <bitbar.title>Kubectl Info</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>Ian Knighton</bitbar.author>
# <bitbar.author.github>IanKnighton</bitbar.author.github>
# <bitbar.desc>Provides quick access to information on pods and nodes in your kubernetes cluster.<bitbar.desc>
# <bitbar.image>https://github.com/IanKnighton/bitbar-kubectl/blob/main/bitbar-kubectl.png?raw=true</bitbar.image>
# <bitbar.dependencies>kubectl</bitbar.dependencies>
# <bitbar.abouturl>https://github.com/IanKnighton/bitbar-kubectl</bitbar.abouturl>

LANG="en_US.UTF-8"
# You may need to update the PATH to include minikube and kubectl
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export LANG PATH

CURRENT_NODES=`kubectl get nodes`
CURRENT_PODS=`kubectl get pods`

RUNNING_NODE_COUNT=`echo "$CURRENT_NODES" | grep Ready | wc -l | sed -e 's/^[[:space:]]*//'`
RUNNING_POD_COUNT=`echo "$CURRENT_PODS" | grep Running | wc -l | sed -e 's/^[[:space:]]*//'`

echo "Nodes: $RUNNING_NODE_COUNT"
echo "Pods: $RUNNING_POD_COUNT"