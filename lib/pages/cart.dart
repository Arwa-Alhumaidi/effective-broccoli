import 'package:flutter/material.dart';
import 'package:project_2/main.dart';
import 'package:project_2/models/product.dart';

extension gg2 on BuildContext {
  void openPage2(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: InkWell(
            onTap: () {
              context.openPage2(const NavPage());
            },
            child: Container(
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 114, 166, 94),
                size: 45,
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: const Text(
          'My Cart',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          for (final product in AppData.cart)
            CartProductCard(
              product: product,
              onDelete: (() {
                setState(() {});
              }),
              onAdd: (() {
                setState(() {});
              }),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 30),
                child: Container(
                  height: 90,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 160, 203, 119),
                      boxShadow: const [
                        BoxShadow(blurRadius: 24, color: Color.fromARGB(255, 195, 194, 194)),
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 23),
                    child: Text(
                      'Checkout',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.product,
    required this.onDelete,
    required this.onAdd,
  });
  final Product product;
  final Function() onDelete;
  final Function() onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          product.imageUrl,
                          height: 70,
                          width: 70,
                        ),
                        // const Padding(padding: EdgeInsets.only(left: 20)),
                        Expanded(
                          child: Text(
                            product.name,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),

                        InkWell(
                          onTap: (() {
                            AppData.cart.add(product);
                            onAdd();
                          }),
                          child: const Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 114, 166, 94),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            AppData.cart.remove(product);
                            onDelete();
                          }),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        'SAR ${product.price}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
