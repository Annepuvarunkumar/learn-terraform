data "aws_ami" "ami" {
    most_recent      = true
    name_regex       = "Centos-8-DevOps-Practice-*"
    owners           = [973714476881]
}

#used to get the data, fetching the existing data like ami etc...