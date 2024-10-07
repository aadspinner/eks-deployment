FROM ubuntu

# Set environment variables
ENV AWSCLI_VERSION=2.11.2
ENV EKSCTL_VERSION=0.140.0
ENV KUBECTL_VERSION=v1.3.0

# Update the package list and install dependencies
RUN apt-get update && apt-get install -y curl unzip python3 python3-pip

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWSCLI_VERSION}.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install && rm -rf awscliv2.zip

# Install eksctl
RUN curl --location "https://github.com/weaveworks/eksctl/releases/download/v${EKSCTL_VERSION}/eksctl_Linux_amd64.tar.gz" -o eksctl.tar.gz && tar xz -C /usr/local/bin -f eksctl.tar.gz && rm eksctl.tar.gz

# Install kubectl
RUN curl -LO "https://dl.k8s.io/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && chmod +x kubectl && mv kubectl /usr/local/bin/

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]
