// this data sources are used to read the data from somewhere, when u need data from existing amazon things  (or)
// other existing things u want to refer then we use data sources

data "aws_ami_ids" "ami" {
  name_regex       = "Centos-*"
  owners           = [973714476881]
}

output "ami" {
    value = data.aws_ami_ids.ami
}