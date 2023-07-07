FROM quay.io/keycloak/keycloak:latest
ENV KEYCLOAK_ADMIN=kctest
ENV KEYCLOAK_ADMIN_PASSWORD=kctest
ENV PROXY_ADDRESS_FORWARDING=true
#ENV REDIRECT_SOCKET=proxy-https
ENV KC_HOSTNAME_URL=https://clownfish-app-5y42k.ondigitalocean.app/auth
ENV KC_FRONTEND_URL=https://clownfish-app-5y42k.ondigitalocean.app/auth
ENV KC_HOSTNAME_ADMIN_URL=https://clownfish-app-5y42k.ondigitalocean.app/auth
#ENV KC_PROXY=edge
CMD ["start", "--hostname-strict=false", "--proxy=edge", "--http-relative-path=/auth"]
