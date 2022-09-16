resource "aws_vpc" "demo" {
  cidr_block = var.vpc_cidr

  tags = {
      Name = "demovpc",
    }
}