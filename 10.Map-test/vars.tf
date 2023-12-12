variable "vpc" {
  default = {
    cidr = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.0.0.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.0.1.0/24", az = "us-east-1b" }
      }
      app = {
        app1 = { cidr = "10.0.2.0/24", az = "us-east-1a" }
        app2 = { cidr = "10.0.3.0/24", az = "us-east-1b" }
      }
      db = {
        db1 = { cidr = "10.0.4.0/24", az = "us-east-1a" }
        db2 = { cidr = "10.0.5.0/24", az = "us-east-1b" }
      }
    }
  }
}

#output "all_subnets" {
#  value = {for k, v in merge(var.vpc["main"]["subnets"]) :k => v}
#}

locals {
  public    = {for k, v in merge(var.vpc["main"]["subnets"]["public"]) :k => v}
  app       = {for k, v in merge(var.vpc["main"]["subnets"]["app"]) :k => v}
  db        = {for k, v in merge(var.vpc["main"]["subnets"]["db"]) :k => v}
}
#the locals is the one with these we can merge the local variables.

output "all_subnets" {
  value = merge(local.public, local.app, local.db)
}
