import 'dart:math';
import 'package:eats_app/repository/categories_repository.dart';
import 'package:eats_app/repository/urun_repository.dart';
import 'package:eats_app/utils/variables.dart';
import 'package:eats_app/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  TextEditingController lookingController = TextEditingController();
  CategoriesRepository category = CategoriesRepository();

  UrunRepository urunCollection = UrunRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 55,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 13,
            ),
            CircleAvatar(
              backgroundColor: Colors.white60,
              backgroundImage: ImageItems.profileImage,
            ),
          ],
        ),
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'Good Morning',
              style: FontItems.normalTextStyle16,
            ),
            const TextSpan(text: "\n"),
            TextSpan(
              text: 'DK Kupper',
              style: FontItems.normalTextInter18,
            )
          ]),
        ),
        actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(image: ImageItems.backgroundImage, fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 120, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('First and', style: FontItems.boldTextInter24),
              Text(
                'Delicious Food',
                style: FontItems.boldTextInter24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextFormWidget(
                    textFormController: lookingController,
                    hintText: 'what are u looking for?',
                    formIcon: Icons.search,
                    textClicked: () => lookingClick()),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: FontItems.boldTextInter16,
                  ),
                  const SizedBox(
                    width: 10,
                    height: 15,
                  ),
                  Container(
                    height: min(33, 100),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: category.categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: categoriesWidget(widgetText: category.categories[index]),
                        );
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Popular Near You', style: FontItems.boldTextInter16),
                        const Expanded(
                          child: SizedBox(
                            width: 100,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                              style: TextStyle(color: ColorItems.generalTurquaseColor, fontSize: 16),
                            )),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: ColorItems.generalTurquaseColor,
                        ),
                      ],
                    ),
                    Container(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: urunCollection.urunler.length,
                        itemBuilder: (context, index) {
                          return foodCardWidget(
                              hazirlanmaSuresi: urunCollection.urunler[index].hazirlamaSuresi,
                              urunFiyat: urunCollection.urunler[index].urunFiyat,
                              urunGorsel: urunCollection.urunler[index].urunGorsel,
                              urunIsmi: urunCollection.urunler[index].urunAdi);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text('Recommended For You', style: FontItems.boldTextInter16),
                  const Expanded(
                    child: SizedBox(
                      width: 100,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(color: ColorItems.generalTurquaseColor, fontSize: 16),
                      )),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: ColorItems.generalTurquaseColor,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: urunCollection.onerilenUrunler[0].urunGorsel)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(urunCollection.onerilenUrunler[0].urunAdi),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 7),
                                  child: Text(
                                    urunCollection.onerilenUrunler[0].hazirlamaSuresi.toString() + " Minutes",
                                    style: const TextStyle(color: Colors.white54),
                                  ),
                                ),
                                const Text(" | "),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                ),
                                Text(urunCollection.onerilenUrunler[0].urunPuani.toString())
                              ],
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                          child: SizedBox(
                        width: 100,
                      )),
                      const Icon(
                        Icons.add_circle,
                        color: ColorItems.generalTurquaseColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        child: Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: urunCollection.onerilenUrunler[1].urunGorsel)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(urunCollection.onerilenUrunler[1].urunAdi),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 7),
                                  child: Text(
                                    urunCollection.onerilenUrunler[1].hazirlamaSuresi.toString() + " Minutes",
                                    style: const TextStyle(color: Colors.white54),
                                  ),
                                ),
                                const Text(" | "),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                ),
                                Text(urunCollection.onerilenUrunler[1].urunPuani.toString())
                              ],
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                          child: SizedBox(
                        width: 100,
                      )),
                      const Icon(
                        Icons.add_circle,
                        color: ColorItems.generalTurquaseColor,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  lookingClick() {}
}

class foodCardWidget extends StatelessWidget {
  const foodCardWidget(
      {Key? key,
      required this.hazirlanmaSuresi,
      required this.urunFiyat,
      required this.urunGorsel,
      required this.urunIsmi})
      : super(key: key);

  final int hazirlanmaSuresi;
  final AssetImage urunGorsel;
  final String urunIsmi;
  final double urunFiyat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.0),
            color: ColorItems.softGreyColor,
          ),
          height: 170,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(hazirlanmaSuresi.toString() + " Minute"),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 40,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: urunGorsel)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(urunIsmi, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "${urunFiyat} TL",
                          style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 50,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_sharp,
                      color: ColorItems.generalTurquaseColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class categoriesWidget extends StatelessWidget {
  const categoriesWidget({Key? key, required this.widgetText}) : super(key: key);

  final String widgetText;

  @override
  Widget build(BuildContext context) {
    Color widgetColor = ColorItems.softGreyColor;

    return SizedBox(
      width: 90,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Text(widgetText),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.0),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(ColorItems.softGreyColor),
        ),
      ),
    );
  }
}
