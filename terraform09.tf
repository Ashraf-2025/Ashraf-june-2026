resource "aws_internet_gateway" "Ashraf-IGW" {
  vpc_id = aws_vpc.Ashraf-VPC.id

  tags = {
    Name = "Pathnex-IGW"
  }
}

