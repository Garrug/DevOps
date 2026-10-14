
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

# Autorise la lecture du fichier par Nginx
RUN chmod 644 /usr/share/nginx/html/index.html

EXPOSE 80
