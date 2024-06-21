resource "local_file" "products" {
  filename = "products.txt"
  content = "Archivo de productos actualizado"
}