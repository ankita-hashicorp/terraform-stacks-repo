resource "random_id" "random_id_23" {
    byte_length = 12
    keepers = {
        instance_type = "t2.micro"
    }
}

resource "random_id" "random_id_24" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}

resource "random_id" "random_id_25" {
    byte_length = 16
    keepers = {
        instance_type = "t3.micro"
    }
}