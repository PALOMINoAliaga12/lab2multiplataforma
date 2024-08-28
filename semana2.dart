class Producto {
  String nombre;
  double precio;
  String categoria;

  Producto({required this.nombre, required this.precio, required this.categoria});

  void mostrarDetalles() {
    print('Producto: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Categoría: $categoria');
  }
}

class Electronico extends Producto {
  int garantia;

  Electronico({
    required String nombre,
    required double precio,
    required String categoria,
    required this.garantia,
  }) : super(nombre: nombre, precio: precio, categoria: categoria);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía de : $garantia meses');
  }
}

void main() {
  Electronico laptop = Electronico(
    nombre: 'Impresora',
    precio: 349.99,
    categoria: 'Electrónicos',
    garantia: 36,
  );

  laptop.mostrarDetalles();
}
