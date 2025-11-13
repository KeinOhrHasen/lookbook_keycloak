FROM quay.io/keycloak/keycloak:25.0.4

USER root

COPY themes/lookbook /opt/keycloak/themes/lookbook

USER keycloak

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

ENTRYPOINT [ "/opt/keycloak/bin/kc.sh", "start-dev" ]