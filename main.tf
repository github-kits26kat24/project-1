
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.project-1.id]
  key_name               = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

  tags = {
    Name        = var.name
    environment = var.environment
    owner       = var.owner
  }
}

resource "aws_instance" "python3" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.project-1.id]
  key_name               = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install python3 -y
EOF

  tags = {
    Name        = var.python3
    environment = var.environment
    owner       = var.owner
  }
}
