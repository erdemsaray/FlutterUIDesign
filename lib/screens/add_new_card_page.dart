import 'dart:ui';

import 'package:eats_app/utils/variables.dart';
import 'package:eats_app/widgets/elevated_button_widget.dart';
import 'package:eats_app/widgets/text_form_widget.dart';
import 'package:flutter/material.dart';

class NewCardPage extends StatefulWidget {
  NewCardPage({Key? key}) : super(key: key);

  @override
  State<NewCardPage> createState() => _NewCardPageState();
}

class _NewCardPageState extends State<NewCardPage> {
  TextEditingController cardNameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardDateController = TextEditingController();
  TextEditingController cardCCVController = TextEditingController();
  bool imageVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Add New Card",
          style: FontItems.boldTextWorkSans20,
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      backgroundColor: Colors.black,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: ImageItems.backgroundImage, fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Visibility(
                      visible: imageVisibility,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Container(
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Image(image: ImageItems.creditcardImage),
                        ),
                      ),
                    ),
                    TextFormWidget(
                        textFormController: cardNameController,
                        hintText: 'Name in card',
                        formIcon: Icons.credit_card,
                        textClicked: () => textClicked()),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormWidget(
                        textFormController: cardNumberController,
                        hintText: 'Card number',
                        formIcon: Icons.numbers,
                        textClicked: () => textClicked()),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormWidget(
                              textFormController: cardDateController,
                              hintText: 'Date',
                              formIcon: Icons.date_range_outlined,
                              textClicked: () => textClicked()),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: TextFormWidget(
                                textFormController: cardCCVController,
                                hintText: 'CCV',
                                formIcon: Icons.abc,
                                textClicked: () => textClicked())),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ElevatedButtonWidget(
                      buttonTitle: 'Submit',
                      buttonColor: ColorItems.generalTurquaseColor,
                      buttonTextStyle: FontItems.boldTextInter20,
                      buttonMetod: () => submit(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorItems.generalTurquaseColor),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ElevatedButtonWidget(
                        buttonTitle: 'Scan Card',
                        buttonColor: Colors.transparent,
                        buttonTextStyle: FontItems.boldTextInter20,
                        buttonMetod: () => scanCard(),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  void submit() {
    print("Clicked submit button");
  }

  void scanCard() {
    print("Clicked Scan Card button");
  }

  void textClicked() {
    print("Texte tiklandi");
    setState(() {
      imageVisibility = false;
    });
  }
}
