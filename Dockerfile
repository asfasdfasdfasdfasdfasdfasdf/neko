FROM ghcr.io/m1k1o/neko/firefox:latest

USER root

# Tell Neko to run on Render's native port 10000
ENV NEKO_SERVER_BIND=:10000
ENV NEKO_SERVER_PORT=10000

# Fix for the green loading circle
ENV NEKO_WEBRTC_ICELITE=true

# Set login credentials
ENV NEKO_MEMBER_PROVIDER=multiuser
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko

# Optimize screen size
ENV NEKO_DESKTOP_SCREEN=1280x720@30
