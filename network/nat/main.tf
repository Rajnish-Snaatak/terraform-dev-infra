resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = merge(local.common_tags, {
    Name = "dev-ot-ms-nat-eip"
  })
}

resource "aws_nat_gateway" "dev_nat" {
  allocation_id = aws_eip.nat_eip.id

  subnet_id = data.terraform_remote_state.subnets.outputs.public_subnet_1_id

  tags = merge(local.common_tags, {
    Name = "dev-ot-ms-nat-gateway"
  })

  depends_on = [
    aws_eip.nat_eip
  ]
}

