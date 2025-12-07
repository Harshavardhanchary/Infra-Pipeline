resource "aws_instance" "web" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "m7i-flex.large"
}

