class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class AppData {
  static const List<Product> products = [
    Product(
        name: 'Banana',
        price: 8.00,
        imageUrl:
            'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg'),
    Product(
        name: 'Sweet Tamarind',
        price: 16.10,
        imageUrl:
            'https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/18760-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyMDExNDF8aW1hZ2UvanBlZ3xoNzQvaDFkLzEwNTIzNzYzMjEyMzE4LzE4NzYwLTAxLmpwZ18xMjAwV3gxMjAwSHw3YTY3ZjllY2M4MWQ1YmE0ZTNlMTUyM2ZiODM4MDgyN2VjNDJmYWY5ZDhmY2ZhMTgxNTYyZWQ4ZWQ5MzA3ZGQ2'),
    Product(
        name: 'Red Apple Medium Box',
        price: 14.50,
        imageUrl:
            'https://media.istockphoto.com/id/604351742/photo/wooden-box-full-of-fresh-apples-isolated.jpg?s=170x170&k=20&c=-PhBsMPOoTeti4qxBMVceWuU-i98WVlxsGUDrjq40kY='),
    Product(
        name: 'Mandarin Medium Box',
        price: 12.50,
        imageUrl: 'https://cdn.shopify.com/s/files/1/0958/3834/products/mandarins.jpg?v=1602077460'),
    Product(
        name: 'Banana',
        price: 8.00,
        imageUrl:
            'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg'),
    Product(
        name: 'Sweet Tamarind',
        price: 16.10,
        imageUrl:
            'https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/18760-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyMDExNDF8aW1hZ2UvanBlZ3xoNzQvaDFkLzEwNTIzNzYzMjEyMzE4LzE4NzYwLTAxLmpwZ18xMjAwV3gxMjAwSHw3YTY3ZjllY2M4MWQ1YmE0ZTNlMTUyM2ZiODM4MDgyN2VjNDJmYWY5ZDhmY2ZhMTgxNTYyZWQ4ZWQ5MzA3ZGQ2'),
    Product(
        name: 'Red Apple Medium Box',
        price: 14.50,
        imageUrl:
            'https://media.istockphoto.com/id/604351742/photo/wooden-box-full-of-fresh-apples-isolated.jpg?s=170x170&k=20&c=-PhBsMPOoTeti4qxBMVceWuU-i98WVlxsGUDrjq40kY='),
    Product(
        name: 'Mandarin Medium Box',
        price: 12.50,
        imageUrl: 'https://cdn.shopify.com/s/files/1/0958/3834/products/mandarins.jpg?v=1602077460'),
  ];

  static List<Product> cart = [];
}
