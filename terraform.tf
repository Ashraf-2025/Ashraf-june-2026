provider "aws" {
    region "us-test-1"
}
resource  "aws_instance" "Pathnex-ec2" {
    ami     = "ami-0a2kdj23j3"
    instance_type   = "c6a.xlarge"
    

    tags ={
        Name = "Pathnex-team"
    }
}
