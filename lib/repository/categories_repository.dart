class CategoriesRepository {
  final List<String> categories = ['Set Meat', 'Pizza', 'Popular', 'Fish', 'Burgers'];

  //bu kısımda backendden veri alabiliriz. Bu durumda verileri kullandığımız kısımları asyn

  CategoriesRepository() {
    categories.add('Fastfood');
    categories.add('Vegan');
  }
}
