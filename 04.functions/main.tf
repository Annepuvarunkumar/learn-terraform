variable "fruits" {
    default [ "apple", "banana" ]
 }

output "fruits" {
    value = element{var.fruits, 2}
}