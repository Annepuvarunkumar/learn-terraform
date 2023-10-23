variable "fruits" {
    default = [ "apple", "banana"]
 }

output "fruits" {
    //value = var.fruits[2]
    value = element(var.fruits, 2)
}

variable "fruit_with_stock" {
    default = {
     apple = 100
  }
}

output "fruit_with_stock" {
    value = try(var.fruit_with_stock["banana"], 0)
}
#  try functions will try to see the variable if its not there then it gives zero in the o/p.


output "fruit_with_stock" {
    value = lookup(var.fruit_with_stock["apple"], "price", 2)
      # this was used in the roboshop-v2 dir (main.tf)
    //  try(var.fruit_with_stock["apple"].price, 2)
}

# Here in lookup function it looks for price, if price is not there then 2 is an default value so it gives default value.
# we will use NULL in Roboshop project as an default value.