FROM niceos/base-os:5.2-latest-x86_64
LABEL maintainer="NiceOS NGINX Docker Maintainers <ilya@teterin.spb.ru>"

RUN tdnf install -y nginx && \
    tdnf clean all && \
    rm -rf /var/cache/tdnf/*

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
