resource "docker_image" "nginx_image" {
  name = "nginx_docker_image:latest"
  build {
    context    = "${path.module}/nginx"
  }
}

# Run a container using the custom NGINX image
resource "docker_container" "nginx_container" {
  name  = "nginx_docker_container"
  image = docker_image.nginx_image.image_id
  ports {
    internal = 1918
    external = 8080
  }
}