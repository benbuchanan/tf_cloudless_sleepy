# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. My sample_var value = sample_var"
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep var.sleepy_time"
  }
}
