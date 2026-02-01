FROM node:20-alpine
WORKDIR /app
RUN printf '<h1>ghost-dock web</h1>' > index.html
CMD ["busybox","httpd","-f","-p","8080"]
