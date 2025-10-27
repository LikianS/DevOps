provider "aws" {
  region = "us-east-2"
}

module "sample_app" {
  source = "github.com/LikianS/DevOps.git//td2/modules/ec2-instance"  # Remplace par le chemin réel du module dans le repo GitHub
  ami_id = "ami-037ed661902baab1a"  # Remplace par ton AMI
  name   = "sample-app-from-github"
}
