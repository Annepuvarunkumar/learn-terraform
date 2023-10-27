# As we removed the for_each function, because we are iterating the module not the resources

resource "aws_instance" "instance" {
  ami                      = var.ami
  instance_type            = var.instance_type
  vpc_security_group_ids   = var.security_group

  tags = {
    name = var.name
  }
}

resource "aws_route53_record" "instance" {
  zone_id                  = var.zone_id
  name                     = "${var.name-dev)}.varundevops.online"
  type                     = "A"
  ttl                      = 30
  records                  = [aws_instance.instance.private_ip]
}

# after launching the instances if we want to apply an ansible command, for this we need an thing called provisioner.
# so by this it can go and apply ansible against that node.
# first it has to create instance and DNS then it need to run this so,for that we need to use one more resource called as null_resource

resource "null_resource" "ansible" {

# this used bcuz we are saying to execute this after creation of instance
 depends on = [
    aws_route53_record.record
 ]

 provisioner "local-exec" {
  command                  = <<EOF
cd /home/centos/roboshop-ansible
git pull
sleep 30
ansible playbook -i ${var.name-dev)}.varundevops.online, main.yml -e ansible_user=centos -e ansible_password=DevOps321 -e component=${var.name}
EOF
  }
}


