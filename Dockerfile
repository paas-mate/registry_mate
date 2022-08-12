FROM ttbb/base:go AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile/pkg
RUN go build -o registry_mate .

FROM ttbb/registry:nake

COPY docker-build /opt/sh/registry/mate

COPY --from=build /opt/sh/compile/pkg/registry_mate /opt/sh/registry/mate/registry_mate

WORKDIR /opt/sh/registry

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/registry/mate/scripts/start.sh"]
