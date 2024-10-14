# cluster-vars.sh
export CLUSTER_NAME="dev-test1"
export NODEGROUP_NAME="spotinstance1"
export NODE_COUNT=3  # Remove quotes to ensure it's an integer
export NODE_MAX_SIZE=5  # Remove quotes to ensure it's an integer
export REGION="ap-south-1"
export AWSCLI_VERSION="2.11.2"
export KUBECTL_VERSION="v1.3.0"
export SSH_PUBLIC_KEY="k9"
export VPC_ID="vpc-0db13f76ffd134754"
export SECURITY_GROUP="sg-05577e05cf426744e"
export SHARED_SECURITY_GROUP="sg-0221530a8428624d9"
export SERVICE_CIDR="10.100.0.0/16"
export VPC_CIDR="10.0.0.0/16"
export AVAILABILITY_ZONES="ap-south-1a,ap-south-1b"

