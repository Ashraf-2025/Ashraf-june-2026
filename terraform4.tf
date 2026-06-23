provider "aws" {
  region    =   "us-east-1"    
}

resource    "aws_key_pair" "Pathnexke" {
    key_name    = "Pathnexkey"
    public_key  =ssh-rsa AA..."

}

resource "aws_instance" "Pathnexsever" {
    ami     = "ami-0abcd1234abcd1234"
    instance_type   =  "t3large"
    key_name    =   aws_key_pair.Pathnexke

    tags = {
    name    = "Pathnex-teams"
    environmet  =   "jon-hunting"
    }
}

