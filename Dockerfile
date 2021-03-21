FROM jboss/keycloak:10.0.0

COPY ./realm-config /opt/jboss/keycloak/realm-config
COPY ./themes/itrex /opt/jboss/keycloak/themes/itrex