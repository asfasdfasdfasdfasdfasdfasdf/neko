FROM ghcr.io/m1k1o/neko/firefox:latest

USER root

# 1. Map Neko to Render's dynamic port assignment
ENV NEKO_BIND=:8080
ENV NEKO_PORT=8080

# 2. Fix for the green loading circle
ENV NEKO_WEBRTC_ICELITE=true

# 3. Set your login credentials
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=admin
ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=neko

# 4. Optimize resolution so Render's free tier CPU doesn't choke
ENV NEKO_DESKTOP_SCREEN=1280x720@30

# 5. Let Neko use its native entrypoint
CMD ["/usr/bin/neko", "serve"]
