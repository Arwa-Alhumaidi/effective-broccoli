import 'package:flutter/material.dart';
import 'package:project_2/main.dart';

extension gg3 on BuildContext {
  void openPage3(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 340),
                    child: InkWell(
                      onTap: () {
                        context.openPage3(const NavPage());
                      },
                      child: Container(
                        child: const Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Color.fromARGB(255, 114, 166, 94),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8, left: 8, bottom: 8),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 228, 228, 228),
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 120,
                            color: Color.fromARGB(255, 114, 166, 94),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Nora',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Nora@gmail.com'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('+966555555'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 245,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 8, color: Color.fromARGB(255, 233, 232, 232)),
                ],
              ),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                      child: Icon(Icons.map),
                    ),
                    Text(' address'),
                  ],
                ),
                const Divider(
                  height: 2,
                  thickness: .7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                      child: Icon(Icons.wallet),
                    ),
                    Text(' wallet'),
                  ],
                ),
                const Divider(
                  height: 2,
                  thickness: .7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                      child: Icon(Icons.card_giftcard),
                    ),
                    Text(' Gift Card'),
                  ],
                ),
                const Divider(
                  height: 2,
                  thickness: .7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                      child: Icon(Icons.shopping_bag),
                    ),
                    Text(' Orders'),
                  ],
                ),
              ]),
            ),
            const SizedBox(height: 35),
            Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 8, color: Color.fromARGB(255, 233, 232, 232)),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                        child: Icon(Icons.travel_explore),
                      ),
                      Text(' Country'),
                      Spacer(),
                      Text('Kingdom of saudi Arabia   '),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    thickness: .7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                        child: Icon(Icons.card_giftcard),
                      ),
                      Text(' Language'),
                      Spacer(),
                      Text('English   '),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              height: 185,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 8, color: Color.fromARGB(255, 233, 232, 232)),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                        child: Icon(Icons.call),
                      ),
                      Text(' Call us'),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    thickness: .7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                        child: Icon(Icons.info),
                      ),
                      Text(' About Us'),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    thickness: .7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15, left: 15),
                        child: Icon(Icons.logout),
                      ),
                      Text(' Logout'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
