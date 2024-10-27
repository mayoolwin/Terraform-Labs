resource "docker_image" "nginx_custom_image" {
  name = "mayoolwin/mol-docker-test:cnfp01"
}

resource "docker_container" "nginx_container" {
  image = docker_image.nginx_custom_image.image_id
  name  = "nginx_docker_container02"
  ports {
    internal = 1918
    external = 8090
  }
}