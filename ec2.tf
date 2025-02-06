resource "aws_instance" "terraform_demo_instance" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.terraform_demo.id]
    
 tags = {
        name = "terraform-demo"
        environment ="Dev"
     }   
}

resource "aws_security_group" "terraform_demo" {

    name = "terraform_demo"
    description = "security for terraform-demo instance"
     ingress {

        from_port      = 22
        to_port        = 22
        protocol    = "tcp"
        cidr_blocks    = ["0.0.0.0/0"]
     }
      egress {

        from_port      = 0
        to_port        = 0
        protocol    = "-1"
        cidr_blocks    = ["0.0.0.0/0"]
     }

     tags = {
        name = "terraform-demo"
        environment ="Dev"
     }
}