# Switch from heavy firefox to lightweight chromium
FROM ghcr.io/m1k1o/neko/chromium:latest
USER root
# Map internal service ports
ENV NEK0_SERVER_BIND=:10000
ENV NEKO_SERVER_PORT=10000
ENV NEKO_WEBRTC_ICELITE=true
ENV NEKO_WEBRTC_IP_RETRIEVAL_URL=https://ipify.org
# Set credentials
ENV NEKO_MEMBER_PROVIDER=multiuser
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko
# Drop the resolution and frame rate further to save critical CPU/RAM
ENV NEKO_DESKTOP_SCREEN=1024x576@15
