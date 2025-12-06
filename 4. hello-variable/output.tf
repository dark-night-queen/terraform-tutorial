output "printname" {
  #   value = var.username # -> Shreya
  #   value = "Hello, var.username!" # -> "Hello, var.username!"
  value = "Hello, ${var.username}!" # -> "Hello, Shreya!"
}
