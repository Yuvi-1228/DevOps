# Pulls the image
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

# Create a container
resource "docker_container" "ubuntu_ctnr" {
  image = docker_image.ubuntu.image_id
  name  = "ubuntu_img"

  port {
    internal = 80
    external = 80 
  }
}