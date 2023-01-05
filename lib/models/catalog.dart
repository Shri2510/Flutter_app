class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 max pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-66428/iphone-12-pro-max-graphite-hero-1.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
