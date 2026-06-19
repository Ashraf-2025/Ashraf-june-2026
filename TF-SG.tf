provider "aws" {
    region = "us-east-1"
}
resource "aws_security_group" "Ashraf-SG" {
    name = "AshrafSG"
    description = "AshrafSG for SSH"
    ingress {
        from_port   = 22
        to_port     =22
        cidr_blocks = ["172-31-44-32/32"] 
    }  
}

resource "aws_instance_aws" "Ashraf-EC2" {
    ami     = "ami-0abcd1234abcd1234" 
    instance_type      = "r6i.4xlarge"
    vpc_security_group_ids = [aws_security_group.PathnexSG.id]
                
    tags = {
      name = "Ashraf-team"
      environmet = "PROd"
    }
}
