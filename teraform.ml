provider "aws" {
    region ="us-east-1"
}

 resource "aws_instance" "PathnexEC2" {
    ami            = "ami-0abcd1234abcd1234"
    instance_type  = "t2.2xlarge"

    tags = {
        Team Name       = "Udaan"
        Environment     = "Production"
        Owner           = "Ashraf         
    }
 }
