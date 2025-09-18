FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04
USER root
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl wget gnupg lsb-release jq make unzip git && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl
RUN curl -fsSL https://get.helm.sh/helm-v3.15.2-linux-amd64.tar.gz -o /tmp/helm.tgz && tar -xzf /tmp/helm.tgz -C /tmp && mv /tmp/linux-amd64/helm /usr/local/bin/helm && chmod +x /usr/local/bin/helm && rm -rf /tmp/linux-amd64 /tmp/helm.tgz
RUN curl -fsSL https://releases.hashicorp.com/terraform/1.8.5/terraform_1.8.5_linux_amd64.zip -o /tmp/terraform.zip && unzip /tmp/terraform.zip -d /usr/local/bin && rm /tmp/terraform.zip
RUN curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip && unzip /tmp/awscliv2.zip -d /tmp && /tmp/aws/install && rm -rf /tmp/aws /tmp/awscliv2.zip
RUN curl -fsSL https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64 -o /usr/local/bin/kind && chmod +x /usr/local/bin/kind
RUN wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64 && chmod +x /usr/local/bin/yq
USER vscode
