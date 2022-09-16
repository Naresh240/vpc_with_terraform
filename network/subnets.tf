data "aws_availability_zones" "available" {}

resource "aws_subnet" "demo" {
  count = length(var.subnets_cidr)

  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = var.subnets_cidr[count.index]
  vpc_id            = aws_vpc.demo.id
  map_public_ip_on_launch = true

  tags = {
    Name = "demosubnet${count.index}"
  }
}