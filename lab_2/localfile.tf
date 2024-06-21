resource "local_file" "products" {
  count=4
  filename = "products-${random_string.preffix[count.index].id}.txt"
  content = "Archivo de productos actualizado"
}