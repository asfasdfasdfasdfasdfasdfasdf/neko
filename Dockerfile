FROM ghcr.io/m1k1o/neko/firefox:latest

USER root

# 1. Map Neko V3 to the container's internal web server port
ENV NEKO_SERVER_BIND=:8080
ENV NEKO_SERVER_PORT=8080

# 2. FIX FOR THE GREEN CIRCLE: Force video streaming over Render's single open port
ENV NEKO_WEBRTC_ICELITE=true

# 3. Set your login credentials using Neko V3 configuration format
ENV NEKO_MEMBER_PROVIDER=multiuser
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko

# 4. Optimize screen size so Render's free tier CPU doesn't choke or freeze
ENV NEKO_DESKTOP_SCREEN=1280x720@30

# Keep this empty at the bottom! No CMD or ENTRYPOINT line.
# This forces the image to use its official startup script so the display initializes properly.
