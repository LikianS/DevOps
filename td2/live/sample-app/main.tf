provider "aws" {
  region = "us-east-2"
}

module "sample_app" {
  source = "github.com/LikianS/DevOps.git//td2/modules/ec2-instance"
  ami_id = "ami-037ed661902baab1a"
  name   = "sample-app-from-github"

  # Associer explicitement le provider root à ce module
  providers = {
    aws = aws
  }
}
