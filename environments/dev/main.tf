module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"

  project_name = var.project_name
  environment  = var.environment
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id = "ami-0b8c6b923777519db" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  subnet_id = module.vpc.public_subnet_id
  vpc_id    = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment
}
