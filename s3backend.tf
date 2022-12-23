terraform {
  backend "s3" {
    bucket = "prashanthterraformbucket"
    key = "devopsb16gitclass.tfstate"
    region = "us-east-1"
  }
}