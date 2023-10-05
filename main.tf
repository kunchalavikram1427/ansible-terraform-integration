resource "aws_instance" "web" {
  ami           = "ami-0bb4c991fa89d4b9b" 
  instance_type = "t2.micro"

  tags = {
    Name        = "webserver"
    Environment = "dev"
  }

  key_name        = aws_key_pair.terraform-demo.key_name
  security_groups = ["allow_ssh_http_sg"]

  # provisioner "local-exec" {
  #   command = "echo The server IP address is ${self.public_ip} > ./hosts" 
  #   on_failure = continue
  # }
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' install-apache.yaml"
    on_failure = continue
  }
}

output "access_url" {
  value = "http://${aws_instance.web.public_ip}"
}
