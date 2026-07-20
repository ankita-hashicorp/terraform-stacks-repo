resource "random_id" "random_id_31" {
    byte_length = 12
    keepers = {
        instance_type = "t2.micro"
    }
}

resource "random_id" "random_id_32" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}

resource "random_id" "random_id_33" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}

resource "random_password" "db_password_test" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_shuffle" "az_bb" {
  input        = ["us-east-1a", "us-east-1b", "us-east-1c"]
  result_count = 1
}

resource "random_pet" "custom_name_11" {
  length    = 3
  prefix    = "prod"
  separator = "_"
}