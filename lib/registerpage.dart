import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_in/loginpage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('images/register.png')),
              const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Let's make your dream vacation come true with this travel app!",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              const CustomFormRegister(),
              const CheckboxButton(),
              const SizedBox(height: 8),
              buildActionButton(
                label: 'Sign Up',
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }), (Route<dynamic> route) => false);
                },
              ),
              const SizedBox(height: 8),
              Center(
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                    text: 'Already have an account? ',
                    children: [
                      TextSpan(
                          text: 'Sign In',
                          style: const TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }), (Route<dynamic> route) => false);
                            })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFormRegister extends StatefulWidget {
  const CustomFormRegister({super.key});

  @override
  State<StatefulWidget> createState() => _CustomFormRegisterState();
}

class _CustomFormRegisterState extends State<CustomFormRegister> {
  bool _isHiddenPass = true;
  bool _isHiddenConfirmPass = true;

  void _togglePasswordView() {
    setState(() {
      _isHiddenPass = !_isHiddenPass;
    });
  }

  void _toggleConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPass = !_isHiddenConfirmPass;
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
                  fontSize: 16,
                  letterSpacing: 1.0,
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
                letterSpacing: 3.5),
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
        const SizedBox(height: 10),
        const Text(
          'Confirm Password',
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
            obscureText: _isHiddenConfirmPass,
            obscuringCharacter: '•',
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 3.5),
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
                  onPressed: () => _toggleConfirmPasswordView(),
                  icon: _isHiddenConfirmPass
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
        const Text.rich(TextSpan(
            style: TextStyle(fontSize: 12, color: Colors.black),
            text: 'I agree to the ',
            children: [
              TextSpan(
                  text: 'Terms & Conditions',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' and ',
                  style: TextStyle(fontSize: 12, color: Colors.black)),
              TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
            ]))
      ],
    );
  }
}
