import 'package:eats_app/modals/urun.dart';
import 'package:eats_app/utils/variables.dart';

class UrunRepository {
  List<Urun> urunler = [
    Urun('Cheese Pizza', 45, 67.75, ImageItems.pizza1, 4.3),
    Urun('Special Burger', 34, 40.73, ImageItems.hamburger1, 4.3),
    Urun('Pan Cake', 29, 45.70, ImageItems.pancake1, 4.3),
    Urun('Korean Noddle', 54, 20.05, ImageItems.nooddle1, 4.3),
    Urun('Arban Kabbab', 68, 35.55, ImageItems.kebab1, 4.3),
    Urun('Grill Sandwich', 25, 24.84, ImageItems.sandwich1, 4.3),
  ];

  List<Urun> onerilenUrunler = [
    Urun('Vegan Pizza', 45, 67.75, ImageItems.biryani1, 4.8),
    Urun('Spicy Chicken Biryani', 34, 40.73, ImageItems.biryani2, 4.7),
  ];
}
