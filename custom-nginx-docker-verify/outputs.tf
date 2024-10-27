output "nginx_image_id" {
  value = docker_image.nginx_custom_image.name
}

output "nginx_container_name" {
  value = docker_container.nginx_container.name
}

output "nginx_port" {
  value = {
    internal_port = docker_container.nginx_container.ports[0].internal
    external_port = docker_container.nginx_container.ports[0].external
  }
}
