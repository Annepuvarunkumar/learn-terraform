variable "ami" {
 default =  "ami-03265a0778a880afb"
}

variable "security_group" {
 default = [ "sg-06c4c9ba200d014bf" ]
}

variable "instance_type" {
 default = "t3.small"
}

variable "zone_id" {
 default = "Z09517412DHKFAPXSWNLX"
}

variable "components" {
    default = {
    frontend         = { name = "frontend-dev" }
    mongodb          = { name = "mongodb-dev" }
    catalogue        = { name = "catalogue-dev" }
    redis            = { name = "redis-dev" }
    user             = { name = "user-dev" }
    cart             = { name = "cart-dev" }
    mysql            = { name = "mysql-dev" }
    shipping         = { name = "shipping-dev" }
    rabbitmq         = { name = "rabbitmq-dev" }
    payment          = { name = "payment-dev" }
    dispatch         = { name = "dispatch-dev" }
    }
}


resource "aws_instance" "instance" {
  for_each                 = var.components
  ami                      = var.ami
  instance_type            = var.instance_type
  vpc_security_group_ids   = var.security_group

  tags = {
    name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "instance" {
  for_each   = var.components
  zone_id    = var.zone_id
  name       = "${lookup(each.value, "name", null)}.varundevops.online"
  type       = "A"
  ttl        = 30
  records    = [lookup(lookup(aws_instance.instance, each.key, null) "private_ip", null)]
}

output "instances" {
    value = aws_instance.instance
}
# we need to give function and declare the variable in every resource


