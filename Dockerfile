FROM ghcr.io/m1k1o/neko/firefox:latest

USER root

# 1. Map Neko to Render's dynamic port assignment
ENV NEKO_BIND=:PORT
ENV NEKO_PORT=8080

# 2. FIX FOR THE GREEN CIRCLE: Force video streaming over Render's single open port
ENV NEKO_WEBRTC_ICELITE=true
ENV NEKO_WEBRTC_PORT=$PORT

# 3. Set your login credentials
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko

# 4. Optimize resolution so Render's free tier CPU doesn't choke
ENV NEKO_DESKTOP_SCREEN=1280x720@30

# 5. Execute Neko binding directly to Render's port environment variable
CMD ["sh", "-c", "/usr/bin/neko --bind :$PORT"]
