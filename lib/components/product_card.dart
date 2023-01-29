import 'package:flutter/material.dart';
import 'package:project_2/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;
  static const Color heartColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: 190,
            //height: 250,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: Color.fromARGB(255, 212, 211, 211)),
              ],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    ///heart icon & pic
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Image.network(
                          product.imageUrl,
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),

                    ///text
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Flexible(
                                child: Text(
                                  product.name,
                                  style:
                                      const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Flexible(
                                child: Text(
                                  'SAR ${product.price}',
                                  style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 114, 166, 94)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    ///plus icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (() {
                                AppData.cart.add(product);
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(left: 153, top: 34),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 114, 166, 94),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 37,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
