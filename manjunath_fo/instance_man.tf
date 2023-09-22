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
	access_key = "AKIA5BXG62H6OEXT5HXJ"
  	secret_key = "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"
}




resource "aws_instance" "manjunath" {

 	ami= "ami-0d52744d6551d851e"
	instance_type="t2.micro"

}

output "public_matter"{

	value=aws_instance.manjunath.public_ip
}