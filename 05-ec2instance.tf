# EC2 Instance
resource "aws_instance" "jfrog" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  user_data = file("${path.module}/jfrog.sh")
  key_name = var.instance_keypair //make sure aws-keypair-name is equal to myec2vm
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
  subnet_id = "subnet-0c9c8d76c6ef399bb"
  associate_public_ip_address = true
  tags = {
    "Name" = "jfrog_Instance-01"
  }
}

# resource "aws_route53_zone" "main" {
#   name = "alex.com"
# }

# resource "aws_route53_zone" "dev" {
#   name = "dev.alex.com"

#   tags = {
#     Environment = "dev"
#   }
# }

# resource "aws_route53_record" "dev-ns" {
#   zone_id = aws_route53_zone.main.zone_id
#   name    = "dev.alex.com"
#   type    = "NS"
#   ttl     = "30"
#   records = aws_route53_zone.dev.name_servers
# }