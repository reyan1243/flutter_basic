class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
// we have created constructor to initialize the variables
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 13",
        desc: "This is the latest iPhone",
        price: 1100,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSdYOCET7mzQD1W-bjsVCCHXR7JlOG8nUPBQ&usqp=CAU"),
  ];
}
