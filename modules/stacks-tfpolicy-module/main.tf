resource "random_id" "random_id_7" {
    byte_length = 12
    keepers = {
        instance_type = "t2.micro"
    }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0" 

  name = "my-application-vpc"

  tags = {
    Environment = "production"
    Terraform   = "true"
  }
}

resource "random_password" "db_password_test_demo1" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_shuffle" "az_test" {
  input        = ["us-east-1a", "us-east-1b", "us-east-1c"]
  result_count = 1
}

resource "random_pet" "custom_name_13" {
  length    = 3
  prefix    = "prod"
  separator = "_"
}

resource "aws_instance" "example_1" {
  ami                         = "ami-0a1b2c3d4e5f00001"
  instance_type               = "t3.micro"
  availability_zone           = "eu-north-1a"
  subnet_id                   = "subnet-0123456789abcdef01"
  vpc_security_group_ids      = ["sg-0123456789abcdef01"]
  key_name                    = "example-key-1"
  iam_instance_profile        = "example-instance-profile-1"
  associate_public_ip_address = true
  monitoring                  = false
  source_dest_check           = true

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
    encrypted   = true
  }

  ebs_block_device {
    device_name           = "/dev/sdh"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "example-instance-1"
    Environment = "dev"
    Owner       = "team-a"
  }
}

resource "aws_instance" "example_2" {
  ami                         = "ami-0a1b2c3d4e5f00002"
  instance_type               = "t3.micro"
  availability_zone           = "eu-north-1b"
  subnet_id                   = "subnet-0123456789abcdef02"
  vpc_security_group_ids      = ["sg-0123456789abcdef02"]
  key_name                    = "example-key-2"
  iam_instance_profile        = "example-instance-profile-2"
  associate_public_ip_address = true
  monitoring                  = false
  source_dest_check           = true

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
    encrypted   = true
  }

  ebs_block_device {
    device_name           = "/dev/sdh"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "example-instance-2"
    Environment = "dev"
    Owner       = "team-a"
  }
}

//create resource block for aws s3 bucket
resource "aws_s3_bucket" "ankita-demo-bucket-test12" {
  bucket = "ankita-demo-bucket-test12"
  tags = {
    Name        = "demo-bucket-test12"
    Environment = "dev"
    Owner       = "team-a"
    owner       = "team"
  }
}

resource "aws_s3_bucket" "ankita-demo-bucket-test23" {
  bucket = "ankita-demo-bucket-test23"
  tags = {
    Name        = "demo-bucket-test23"
    Environment = "dev"
    Owner       = "team-a"
    owner       = "team"
  }
}

resource "aws_s3_bucket" "ankita-demo-bucket-test34" {
  bucket = "ankita-demo-bucket-test34"
  tags = {
    Name        = "demo-bucket-test34"
    Environment = "dev"
    Owner       = "team-a"
    owner       = "team"
  }
}