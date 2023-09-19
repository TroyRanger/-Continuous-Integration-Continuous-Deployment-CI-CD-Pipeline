# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy your web application files into the container
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start the web server when the container runs
CMD ["nginx", "-g", "daemon off;"]
