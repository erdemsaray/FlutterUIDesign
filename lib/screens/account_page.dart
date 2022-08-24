import 'package:eats_app/utils/variables.dart';
import 'package:eats_app/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {},
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))],
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(image: ImageItems.backgroundImage, fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 25, 25, 25),
                        foregroundImage: ImageItems.profileImage,
                        radius: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "DK Kupper",
                          style: FontItems.normalTextInter14,
                        ),
                      ),
                      const Text(
                        "tanvir@gmail.com",
                        style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      color: ColorItems.greyBackgroundColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Account Info",
                              widgetIcon: Icons.person_sharp,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "My Order",
                              widgetIcon: Icons.card_travel_rounded,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Payment Method",
                              widgetIcon: Icons.credit_card,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Track Me",
                              widgetIcon: Icons.location_on,
                              widgetFunction: () => accountInfo(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: ColorItems.greyBackgroundColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Settings",
                              widgetIcon: Icons.settings,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Help Center",
                              widgetIcon: Icons.question_answer_outlined,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Contact Us",
                              widgetIcon: Icons.mail,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Share App",
                              widgetIcon: Icons.share,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: rowWidget(
                              widgetText: "Rate App",
                              widgetIcon: Icons.star,
                              widgetFunction: () => accountInfo(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButtonWidget(
                        buttonTitle: "Logout",
                        buttonColor: ColorItems.generalTurquaseColor,
                        buttonTextStyle: FontItems.boldTextInter20,
                        buttonMetod: accountInfo),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: 4,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Menu2'),
            const BottomNavigationBarItem(icon: Icon(Icons.account_balance_sharp), label: 'Menu2'),
            const BottomNavigationBarItem(icon: Icon(Icons.event_available_sharp), label: 'Menu2'),
            const BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Menu2'),
            const BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
          ],
        ));
  }

  void accountInfo() {
    print("Account info button clicked");
  }
}

class rowWidget extends StatelessWidget {
  const rowWidget({required this.widgetText, required this.widgetIcon, required this.widgetFunction, Key? key})
      : super(key: key);

  final String widgetText;
  final IconData widgetIcon;
  final VoidCallback widgetFunction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      onTap: widgetFunction,
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                widgetIcon,
                color: Colors.white,
              )),
          const SizedBox(
            width: 15,
          ),
          Text(widgetText, style: FontItems.boldTextInter20),
          const Expanded(
              child: SizedBox(
            width: 100,
          )),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
