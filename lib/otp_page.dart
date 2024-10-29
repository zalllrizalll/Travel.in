import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/change_password_page.dart';
import 'package:travel_in/loginpage.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset('images/reset_pass.png'),
                        ),
                        const Text(
                          'Verification Code',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'We sent 6 digit code to your email address please check and enter your code',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        const FormOtpCode(),
                        const SizedBox(height: 20),
                        buildActionButton(
                            label: 'Verify',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChangePasswordPage();
                              }));
                            }),
                        const SizedBox(height: 8),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.black),
                              text: 'Didn\'t receive the code? ',
                              children: [
                                TextSpan(
                                    text: 'Resend',
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {})
                              ],
                            ),
                          ),
                        )
                      ]),
                )),
          ),
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

class FormOtpCode extends StatefulWidget {
  const FormOtpCode({super.key});

  @override
  State<StatefulWidget> createState() => _FormOtpCodeState();
}

class _FormOtpCodeState extends State<FormOtpCode> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Container(
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 5))
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            onChanged: (value) {
              if (value.length == 1) {
                if (index == 5) {
                  FocusScope.of(context).unfocus();
                } else {
                  FocusScope.of(context).nextFocus();
                }
              }
            },
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                counterText: '',
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
        ),
      ),
    );
  }
}
