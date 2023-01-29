import 'package:flutter/material.dart';
import 'package:project_2/components/product_card.dart';
import 'package:project_2/models/product.dart';
import 'package:project_2/pages/cart.dart';

extension gg on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 114, 166, 94),
                    size: 45,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 85,
                  width: 270,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: 'Search item...',
                        hintStyle: const TextStyle(color: Color.fromARGB(255, 208, 208, 208), fontSize: 18),
                        prefixIcon:
                            Container(padding: const EdgeInsets.all(15), width: 18, child: const Icon(Icons.search))),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 20),
                  child: InkWell(
                    onTap: (() {
                      context.openPage(const CartPage());
                    }),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color.fromARGB(255, 114, 166, 94), width: 2),
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        size: 35,
                        color: Color.fromARGB(255, 114, 166, 94),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '  Fruits',
                    style: TextStyle(fontSize: 27),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(blurRadius: 8, color: Color.fromARGB(255, 203, 202, 202)),
                        ],
                      ),
                      child: const Icon(
                        Icons.menu_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 114, 166, 94),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
                left: 30,
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromARGB(255, 192, 229, 188),
                        boxShadow: const [
                          BoxShadow(blurRadius: 18, color: Color.fromARGB(255, 195, 194, 194)),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/fruit.png',
                          height: 30,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Fruits'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromARGB(255, 250, 236, 206),
                        boxShadow: const [
                          BoxShadow(blurRadius: 18, color: Color.fromARGB(255, 195, 194, 194)),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/vegetables.png',
                          height: 30,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Vegetables'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromARGB(255, 248, 249, 196),
                        boxShadow: const [
                          BoxShadow(blurRadius: 18, color: Color.fromARGB(255, 195, 194, 194)),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/herbs.png',
                          height: 30,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Herbs'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromARGB(255, 255, 254, 233),
                        boxShadow: const [
                          BoxShadow(blurRadius: 18, color: Color.fromARGB(255, 195, 194, 194)),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/packages.png',
                          height: 30,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Packages'),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: (.7 / 1),
                primary: false,
                crossAxisCount: 2,
                children: [
                  for (final product in AppData.products)
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ProductCard(product: product),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
