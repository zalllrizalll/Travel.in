import 'package:flutter/material.dart';
import 'package:travel_in/change_password_page.dart';
import 'package:travel_in/loginpage.dart';
import 'package:travel_in/maintenance_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Container(
              padding: const EdgeInsets.only(top: 80.0, bottom: 10),
              child: Column(
                children: [
                  const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.k_H-TfStc4DS_VwB_L2r_wHaHa?w=187&h=188&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                  const SizedBox(height: 20),
                  const Text(
                    'Rizal Pratama',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Universitas Dian Nuswantoro',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  _buildInfoContainer(
                      icon: Icons.email_outlined,
                      label: 'Email',
                      value: 'rzlprtmaaa@gmail.com'),
                  _buildInfoContainer(
                      icon: Icons.calendar_month_outlined,
                      label: 'Date of Birth',
                      value: '12 Februari 2002'),
                  _buildInfoContainer(
                      icon: Icons.male_outlined,
                      label: 'Gender',
                      value: 'Male'),
                  const SizedBox(height: 20),
                  _buildActionContainer(
                      icon: Icons.settings_outlined,
                      label: 'Settings',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MaintenancePage();
                        }));
                      }),
                  _buildActionContainer(
                      icon: Icons.lock_outline_rounded,
                      label: 'Change Password',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ChangePasswordPage();
                        }));
                      }),
                  _buildActionContainer(
                      icon: Icons.help_outline_rounded,
                      label: 'Help',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MaintenancePage();
                        }));
                      }),
                  _buildActionLogout(
                      label: 'Logout',
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                            (Route<dynamic> route) => false);
                      })
                ],
              ),
            )),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)),
                    const Expanded(
                        child: Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

Widget _buildInfoContainer(
    {required IconData icon, required String label, required String value}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    padding: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5)
        ]),
    child: Row(
      children: [
        Icon(icon, size: 30, color: Colors.blueAccent),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _buildActionContainer(
    {required IconData icon,
    required String label,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 30, color: Colors.blueAccent),
              const SizedBox(width: 10),
              Text(
                label,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded, size: 20)
        ],
      ),
    ),
  );
}

Widget _buildActionLogout(
    {required String label, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.red,
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
