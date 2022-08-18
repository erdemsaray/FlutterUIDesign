import 'package:eats_app/utils/variables.dart';
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

  var adasd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
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
                  userNameController: userNameController, hintText: "Username", formIcon: Icons.person_outline),
              const SizedBox(
                height: 20,
              ),
              TextFormWidget(
                  userNameController: passwordController, formIcon: Icons.lock_outline, hintText: "Password"),
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
                  buttonTitle: "Sign in"),
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
                  buttonTextStyle: FontItems.normalTextWorkSans16),
              SizedBox(
                height: 15,
              ),
              ElevatedButtonWidget(
                  buttonTitle: "Connect With Google",
                  buttonColor: ColorItems.googleButtonColor,
                  buttonTextStyle: FontItems.normalTextWorkSans16),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    required this.buttonTitle,
    required this.buttonColor,
    required this.buttonTextStyle,
    Key? key,
  }) : super(key: key);

  final String buttonTitle;
  final Color buttonColor;
  final TextStyle buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              ),
              onPressed: () {},
              child: SizedBox(
                  height: 50,
                  child: Center(
                      child: Text(
                    buttonTitle,
                    style: buttonTextStyle,
                  )))))
    ]);
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
    required this.userNameController,
    required this.hintText,
    required this.formIcon,
  }) : super(key: key);

  final TextEditingController userNameController;
  final String hintText;
  final IconData formIcon;
  final IconData? formSuffixIcon = null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: userNameController,
      autofocus: false,
      obscureText: hintText == "Password" ? true : false,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        hoverColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        suffixIcon: Icon(formSuffixIcon, color: Colors.white),
        prefixIcon: Icon(
          formIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
