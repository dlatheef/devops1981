resource "aws_instance" "ubuntu20" {
  count = 1
  ami = "ami-04902260ca3d33422"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.IBM-VPC-subnet1.id
  vpc_security_group_ids = [aws_security_group.IBM-sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key.id

#user_data = <<-EOF
    #! /bin/bash
 #   sudo apt update -y 
  #  sudo apt install openjdk-11-jdk -y 
   # sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
   # sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
   # sudo apt-get update -y 
    # sudo apt-get install jenkins -y 
  
 # EOF

  tags = {
    Name = "Devops-server"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNpoFFdq/5CUesvTresjPlFgMx2Qs8bE9gZ1wd89SPLKMA2J1cFhca8OqQ5AbJ6oTPaQN6JmM/ggqZzCbKhQuHA6loanhk6NdXLP0uG9jTenCGRtA9bYbXaOyVK22dfor4KkaHoi1GR2NV1GwkhulOiPQ7JWe7fpsdT5HDLuC+0Xol1mj2YXdIfzcORZdNV6vXa0TEvBjGpT/1HhKpKd1EGrhyb+1UmHh0d8soHIR9k/ID3bbrJCVFo2OVbbwUEXpEsQtgxe3S4oLRpF7YFUQaIso/tyKAFXEFW7EFHgd0nJYSOlSTA85rSFIkOIVqQH1im9Yah3Zy1yQcy/Chncpx rsa-key-20211126"
}
