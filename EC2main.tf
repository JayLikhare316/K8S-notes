resource "aws_instance" "a" {
  ami           = "ami-0c50b6f7dc3701ddd" // ami id's are region specific so choose according to your region
  instance_type = "t2.micro" 
  key_name = "demo-key" // key pair name

  tags = {
    Name = "HelloWorld_a"
  }
}
