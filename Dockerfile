FROM docker.io/alpine:3.11

LABEL \
  "name"="GitHub Repo Sync Upstream" \
  "homepage"="https://github.com/marketplace/actions/github-repo-sync-upstream" \
  "repository"="https://github.com/actions-registry/gitHub-repo-sync-upstream" \
  "maintainer"="The actions-registry Authors <https://github.com/actions-registry>"

RUN apk add --no-cache \
			bash \
			git \
			openssh-client && \
		echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD entrypoint.bash /

ENTRYPOINT ["/entrypoint.bash"]
