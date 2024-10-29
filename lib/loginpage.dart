import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_in/homepage.dart';
import 'package:travel_in/registerpage.dart';
import 'package:travel_in/reset_password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('images/login.png')),
                const Text(
                  'Travel.in',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Explore the world easier with our travel app! Find your dream destination and book in seconds!',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const CustomFormLogin(),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CheckboxButton(),
                    Text.rich(TextSpan(
                      text: 'Forgot password?',
                      style: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ResetPasswordPage();
                          }));
                        },
                    )),
                  ],
                ),
                const SizedBox(height: 10),
                buildActionButton(
                    label: 'Sign In',
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (Route<dynamic> route) => false);
                    }),
                const SizedBox(height: 8),
                Center(
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(fontSize: 13, color: Colors.black),
                      text: 'Don\'t have an account? ',
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterPage();
                                }));
                              })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class CustomFormLogin extends StatefulWidget {
  const CustomFormLogin({super.key});

  @override
  State<StatefulWidget> createState() => _CustomFormLoginState();
}

class _CustomFormLoginState extends State<CustomFormLogin> {
  bool _isHiddenPass = true;

  void _togglePasswordView() {
    setState(() {
      _isHiddenPass = !_isHiddenPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: const TextField(
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
              color: Colors.black,
              fontSize: 16,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter your email',
                hintMaxLines: 1,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.0,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(Icons.mail_outline),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 20)),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Password',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5)
              ]),
          child: TextField(
            obscureText: _isHiddenPass,
            obscuringCharacter: '•',
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 16,
              letterSpacing: 3.5,
            ),
            keyboardType: TextInputType.visiblePassword,
            maxLines: 1,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your password',
              hintMaxLines: 1,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                letterSpacing: 1.0,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              suffixIcon: IconButton(
                  onPressed: () => _togglePasswordView(),
                  icon: _isHiddenPass
                      ? SvgPicture.asset('assets/eye_hidden.svg')
                      : SvgPicture.asset('assets/eye_show.svg')),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildActionButton({required String label, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        )),
  );
}

class CheckboxButton extends StatefulWidget {
  const CheckboxButton({super.key});

  @override
  State<StatefulWidget> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckboxButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: Colors.black,
          checkColor: Colors.white,
          value: _isSelected,
          onChanged: (value) {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
        ),
        const Text(
          'Remember me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
