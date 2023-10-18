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
}

output "fruits_second" {
    value = var.fruits[1]
}

## Access a map variable
output "fruits_stock_apple" {
    value = var.fruits_stock["apple"]
}

output "fruits_stock_with_price" {
    value = var.fruits_stock_with_price["apple"].stock
}



















