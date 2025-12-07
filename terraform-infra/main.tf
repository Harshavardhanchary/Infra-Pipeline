resource "aws_instance" "Through-github-actions" {
  ami           = "ami-02b8269d5e85954ef"
  key_name      = "First-Key"
  instance_type = "m7i-flex.large"
}

resource "aws_security_group" "For-github-actions" {
  name        = "Allow-SSH-HTTP"
  description = "Security group for GitHub Actions instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
