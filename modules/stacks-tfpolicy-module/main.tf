resource "random_id" "random_id_5" {
    byte_length = 12
    keepers = {
        instance_type = "t2.micro"
    }
}

resource "random_id" "random_id_6" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}

resource "random_id" "random_id_7" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}
resource "random_id" "random_id_4" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
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

resource "random_password" "db_password" {
  length           = 10
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_shuffle" "az" {
  input        = ["us-east-1a", "us-east-1b", "us-east-1c"]
  result_count = 1
}

resource "random_pet" "custom_pet_name" {
  length    = 3
  prefix    = "prod"
  separator = "_"
}