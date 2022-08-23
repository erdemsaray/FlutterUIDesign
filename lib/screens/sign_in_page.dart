import 'package:eats_app/utils/variables.dart';
import 'package:eats_app/widgets/elevated_button_widget.dart';
import 'package:eats_app/widgets/text_form_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => SignInPageState();
}

TextStyle boldTextStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white);

class SignInPageState extends State<SignInPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Sign in",
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
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Welcome to",
                        style: FontItems.boldTextInter24,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 249,
                        child: RichText(
                          text: const TextSpan(
                              text: "Enter your phone number or email address for sign in",
                              style: TextStyle(fontSize: 16),
                              children: [
                                TextSpan(
                                    text: " Enjoy your food",
                                    style: TextStyle(fontSize: 17, color: ColorItems.generalTurquaseColor))
                              ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormWidget(
                      textFormController: userNameController, hintText: "Username", formIcon: Icons.person_outline, textClicked: () => textClicked()),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormWidget(
                      textFormController: passwordController, formIcon: Icons.lock_outline, hintText: "Password", textClicked: () => textClicked()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(color: ColorItems.generalTurquaseColor),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButtonWidget(
                    buttonColor: ColorItems.generalTurquaseColor,
                    buttonTextStyle: FontItems.boldTextInter20,
                    buttonTitle: "Sign in",
                    buttonMetod: () => signIn(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: FontItems.normalTextWorkSans16,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign up",
                          style: TextStyle(color: ColorItems.generalTurquaseColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "- - - - - - - - - - - - - - - - - - -    ",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "OR",
                            style: TextStyle(fontSize: 17, color: Colors.white70),
                          ),
                          TextSpan(text: "    - - - - - - - - - - - - - - - - - - - ")
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButtonWidget(
                    buttonTitle: "Connect With Facebook",
                    buttonColor: ColorItems.facebookButtonColor,
                    buttonTextStyle: FontItems.normalTextWorkSans16,
                    buttonMetod: () => connectWithFacebook(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButtonWidget(
                    buttonTitle: "Connect With Google",
                    buttonColor: ColorItems.googleButtonColor,
                    buttonTextStyle: FontItems.normalTextWorkSans16,
                    buttonMetod: () => connectWithGoogle(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn() {
    print("Clicked the SignIn Button");
  }

  void connectWithFacebook() {
    print("Clicked the Facebook Button");
  }

  void connectWithGoogle() {
    print("Clicked the Google Button");
  }

  void textClicked() {
    print("Texte tıklandı");
  }
}
