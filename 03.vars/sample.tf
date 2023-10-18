# Plain variables
variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List of variable
variables "fruits" {
    default = [
        "apples",
        "bananas"
    ]
    #default = [ "apples" , "bananas" ]  // single line syntax
}

# Map Variables, Plain
variables "fruits_stocks" {
    default = {
        apples = 100
        bananas = 200
    }
}

#Map Variables, Maps of map
variables "fruits_name_with_stock_price" {
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

#Access a list variable , list index starts with zero
output "fruits" {
    value = var.fruits[0]
}




















