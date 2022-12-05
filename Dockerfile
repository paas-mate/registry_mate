FROM ttbb/registry:nake

COPY docker-build /opt/registry/mate

WORKDIR /opt/registry

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/registry/mate/scripts/start.sh"]
