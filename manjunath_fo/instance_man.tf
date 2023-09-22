terraform {

  required_providers {

   	 aws = {
       		source  = "hashicorp/aws"
       		version = "~> 5.0"
    }
  }
}



provider "aws" {
  	region     = "us-west-2"
	access_key = "my-access-key"
  	secret_key = "my-secret-key"
}




resource "aws_instance" "manjunath" {

 	ami= "10.0.0.0/16"
	instance_type="t2.micro"

}

output "public_matter"{

	value=aws_instance.manjunath.public_ip
}