FROM runatlantis/atlantis:v0.11.1

ARG terragrunt_version=v0.24.4

# Terragrunt related configuration
# COPY config/repos.yaml /etc/atlantis/repos.yaml

# Install Terragrunt
RUN curl -L -s --output /usr/local/bin/terragrunt "https://github.com/gruntwork-io/terragrunt/releases/download/${terragrunt_version}/terragrunt_linux_amd64"
RUN chmod +x /usr/local/bin/terragrunt

# Install jq, useful for Terraform external datasource
RUN apk add jq
