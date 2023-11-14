# we can keep "n" no.of modules here and can call them whenever it is needed in root module it will do the job

data "aws_ami" "ami" {
    most_recent      = true
    name_regex       = "Centos-8-DevOps-Practice-*"
    owners           = [973714476881]
}

output "ami" {
    value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
  ami                     = data.aws_ami.ami.id
  instance_type           = var.instance_type
# 4. We have to use it in the module
  vpc_security_group_ids  = [ "sg-06c4c9ba200d014bf" ]

# By this we will get an ami id using that ami id we can launch the instance.

}

variable "instance_type" {}
# 3. We have to receive it on the module and also since it is an empty variable the module when calling it up the instance_type
# will data will be pushed into the module { i.e..,in the file main.tf}

