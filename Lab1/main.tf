resource "local_file" "nginx_dockerfile" {
  filename = "${path.module}/nginx/Dockerfile"
  content  = <<-EOT
    # Use the official NGINX base image
    FROM nginx:latest

    # Copy a custom NGINX configuration file
    COPY ./nginx.conf /etc/nginx/nginx.conf

    # Copy custom index.html file to the default NGINX directory
    COPY ./index.html /usr/share/nginx/html/index.html

    # Expose port 80
    EXPOSE 1918

    # Start NGINX
    CMD ["nginx", "-g", "daemon off;"]
  EOT
}