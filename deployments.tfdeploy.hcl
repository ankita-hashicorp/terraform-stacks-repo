store "varset" "aws_credentials_ankita" {
  id = "varset-oyHEE28rsBpVn5Hy"
  category = "env"
}

deployment "dev" {
  inputs = {
    environment_name = "dev"
    aws_access_key_id = store.varset.aws_credentials_ankita.AWS_ACCESS_KEY_ID
    aws_secret_access_key = store.varset.aws_credentials_ankita.AWS_SECRET_ACCESS_KEY
    aws_session_token = store.varset.aws_credentials_ankita.AWS_SESSION_TOKEN
  }
}


deployment "test" {
  inputs = {
    environment_name = "test"
    aws_access_key_id = store.varset.aws_credentials_ankita.AWS_ACCESS_KEY_ID
    aws_secret_access_key = store.varset.aws_credentials_ankita.AWS_SECRET_ACCESS_KEY
    aws_session_token = store.varset.aws_credentials_ankita.AWS_SESSION_TOKEN
  }
}
