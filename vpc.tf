module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "terraform-vpc"
  cidr = "172.16.0.0/16"

  azs             = ["ap-south-1a"]
  private_subnets = ["172.16.1.0/24"]
  public_subnets  = ["172.16.101.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }

}