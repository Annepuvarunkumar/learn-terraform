# Plain variables
variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List of variable
variable "fruits" {
    default = [
        "apple",
        "bananas"
    ]
    #default = [ "apples" , "bananas" ]  // single line syntax
}

# Map Variables, Plain
variable "fruits_stocks" {
    default = {
        apples = 100
        bananas = 200
    }
}

#Map Variables, Maps of map
variable "fruits_name_with_stock_price" {
    default = {
     apples = {
        stock = 100
        price = 3
    }
     bananas = {
        stock = 400
        price = 1
    }
  }
}

#Access a list variable , List index starts with zero
output "fruits_first" {
    value = var.fruits[0]
}

output "fruits_second" {
    value = var.fruits[1]
}




















