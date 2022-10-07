import 'package:flutter/material.dart';
import 'package:monetization_system/presentation/auth/login_page.dart';
import 'package:monetization_system/presentation/widgets/button_widget.dart';
import 'package:monetization_system/presentation/widgets/text_widget.dart';

class SignupPage2 extends StatefulWidget {
  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  var _obscure1 = true;
  var _obscure = true;

  var _value = false;

  late String password;
  late String confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: TextRegular(
                              text: 'Social Network',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        TextBold(
                            text: 'CITE Department',
                            fontSize: 26,
                            color: Colors.white),
                      ],
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextBold(
                      text: 'Register your Account',
                      fontSize: 24,
                      color: Colors.grey),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: TextFormField(
                      obscureText: _obscure,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Quicksand'),
                      onChanged: (_nput) {
                        password = _nput;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: TextFormField(
                      obscureText: _obscure,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Quicksand'),
                      onChanged: (_nput) {
                        confirmPassword = _nput;
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscure1 = !_obscure1;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: TextRegular(
                          text:
                              'By clicking Sign up, you agree to Terms of Service and that have read our Privacy Policy',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        value: _value,
                        onChanged: (newValue) {
                          setState(() {
                            _value = !_value;
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _value,
                    child: ButtonWidget(onPressed: () {}, text: 'Sign up'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextRegular(
                          text: 'Already have an account?',
                          fontSize: 14,
                          color: Colors.grey),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: TextBold(
                            text: 'Log in', fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
