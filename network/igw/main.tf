resource "aws_internet_gateway" "dev_igw" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = merge(local.common_tags, {
    Name = "dev-ot-ms-igw"
  })
}

