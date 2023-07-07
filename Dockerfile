FROM quay.io/keycloak/keycloak:latest
ENV KEYCLOAK_ADMIN=kctest
ENV KEYCLOAK_ADMIN_PASSWORD=kctest
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
