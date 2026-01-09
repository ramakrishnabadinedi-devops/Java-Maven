# Use the official NGINX image as the base image, using the smaller 'alpine' variant
FROM nginx:alpine

# Copy your custom index.html file into the default NGINX web root directory
COPY index.html /usr/share/nginx/html/index.html

# The default NGINX configuration already exposes port 80 and runs the server in the foreground,
# so no EXPOSE or CMD commands are strictly necessary for basic use, but they can be included
# for clarity or if the base image changes its default behavior.
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
