######### Resources ###############

######### AMI to Amazon Linux #####
/*
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
*/
######### create ec2  #############
/*
resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3a.micro"
  tags = {
    Name = "ec2-demo-gopoints"
    Environment = var.environment
    Provisioner = var.provisioner
    Repository  = var.repo
  }
}
*/