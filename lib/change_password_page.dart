import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_in/loginpage.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('images/reset_pass.png'),
                  ),
                  const Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Please enter a new password that consists of at least 8 characters with uppercase and lowercase letters',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const FormChangePassword(),
                  const SizedBox(height: 20),
                  buildActionButton(label: 'Change Password', onTap: () {})
                ],
              ),
            ),
          )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FormChangePassword extends StatefulWidget {
  const FormChangePassword({super.key});

  @override
  State<StatefulWidget> createState() => _FormChangePasswordState();
}

class _FormChangePasswordState extends State<FormChangePassword> {
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
