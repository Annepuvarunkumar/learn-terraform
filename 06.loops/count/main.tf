# if u want to re-run same resource multiple times then we use loops

variable "components" {
    default = [ "frontend" , "mongodb" ]
}

resource "aws_instance" "instance" {

count = length(var.components)

  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-06c4c9ba200d014bf" ]

  tags = {
#     Name = var.components(count.index)
    Name = element(var.components, count.index)
   }
}

resource "aws_security_group" "allow_tls" {
  count = length(var.components)
  name  = element(var.components, count.index)
}
# 1. but generally we not prefer the count function bcuz in this function when we change an components value for ex
# if we add catalogue before the frontend then it renames the frontend to catalogue.

# 2. we use map for variables than list bcuz it will not gurantee that index will not change.
