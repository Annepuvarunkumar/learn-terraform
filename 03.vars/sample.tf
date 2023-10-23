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
        "banana"
    ]
    #default = [ "apples" , "bananas" ]  // single line syntax
}

# Map Variables, Plain
variable "fruits_stock" {
    default = {
        apple = 100
        banana = 200
    }
}

#Map Variables, Maps of map
variable "fruits_stock_with_price" {
    default = {
      apple = {
        stock = 100
        price = 3
    }
      banana = {
        stock = 400
        price = 1
    }
  }
}

## Access a list variable , List index starts with zero
output "fruits_first" {
    value = var.fruits[0]
    # value = element(var.fruits, 0)
}

output "fruits_second" {
    value = var.fruits[1]
}

## Access a map variable
output "fruits_stock_apple" {
    value = var.fruits_stock["apple"]
}

output "fruits_stock_with_price_of_apple" {
    value = var.fruits_stock_with_price["apple"].stock
}

# Variable with data types
variable "fruit_details" {
    default = {
      apple = {
       stock = 100 #a number
       type = "washington" #a String
       for_sale = true #Boolean
       }
    }
}

# Variable in a combination of any other string then it needs to be with in ${}
output "fruit_name_1" {
    value = "Fruit Name = ${var.fruit_name}"
}

output "fruit_details_apple" {
  value = "apple stock = ${var.fruit_details["apple"].stock} , apple type = ${var.fruit_details["apple"].type} , apple sale status = ${var.fruit_details["apple"].for_sale}"
}

# apple stock - is an string and ${var.fruit_details["apple"].stock} - is an variable so it can access only if it is "${}"

















