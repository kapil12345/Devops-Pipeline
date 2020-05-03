# Create Security Group

resource "aws_security_group" "terraform_SG1" {

  vpc_id       = var.vpc_id
  name         = var.sg_name
  description  = "Terraform VPC Security Group"
  
  ingress {
  
    cidr_blocks = var.SG_CIDRblock
    from_port = 22
    to_port = 22
    protocol = "tcp"	
	}

  egress {
  
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  
  
  }
tags =  {
  Name = var.sg_name

}
}
