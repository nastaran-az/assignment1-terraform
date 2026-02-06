# Default VPC already defined in data.tf

# Pick a subnet in a supported AZ (avoid us-east-1e for t3.micro in this lab)
data "aws_subnets" "default_vpc_subnets_1a" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "availability-zone"
    values = ["us-east-1a"]
  }
}

locals {
  subnet_id = tolist(data.aws_subnets.default_vpc_subnets_1a.ids)[0]
}
