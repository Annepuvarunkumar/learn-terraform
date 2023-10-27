#1. These are used to refer other resources by declaring the every variable here
    #there are two modules one is ROOT and other is CHILD
#2. main file where we declare and call the variables is root and remaining .tf files child module.
#3. And we have to give o/p not only in child module but also in this root module or else it will not give the print o/p
    #bcuz child module acts as data transmitter just sends to root module.

module "test" {
  source = "./local-module"
  instance_type = var.instance_type
#2. We have to send it to the module
}

output "test" {
    value = module.test
}

variable "instance_type"{
    default = "t3.micro"
#1. We declare the variable in root module
}

