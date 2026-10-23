FROM ghcr.io/m1k1o/neko/firefox:latest

USER root

# 1. Map Neko V3 to Render's internal gateway port
ENV NEKO_SERVER_BIND=:10000
ENV NEKO_SERVER_PORT=10000

# 2. FORCE WEBUI & WEBRTC TUNNELING VIA RENDER'S PUBLIC INFRASTRUCTURE
ENV NEKO_WEBRTC_ICELITE=true
ENV NEKO_WEBRTC_IP_RETRIEVAL_URL=https://ipify.org

# 3. Set your login credentials
ENV NEKO_MEMBER_PROVIDER=multiuser
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko

# 4. Lower screen resolution parameters for a smooth free-tier performance
ENV NEKO_DESKTOP_SCREEN=1280x720@30
