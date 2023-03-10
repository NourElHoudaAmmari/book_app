class BookModel {
  static final items = [
    Item(
        id: 1,
        name: "Atomic Habit",
        desc: "atomic habit book",
        price: "25Dt",
        auteur: "auteur1",
        image:
        
            "https://m.media-amazon.com/images/I/81E7fYJuiTL._AC_UL600_FMwebp_QL65_.jpg"),
    Item(
        id: 2,
        name: "Rich Dad Poor Dad",
        desc: " Rich dad poor dad book ",
        price: "18Dt",
       auteur: "auteur2",
        image:
            "https://m.media-amazon.com/images/I/61M1eEsuSML.jpg"),
    Item(
        id: 3,
        name: "the secret",
        desc: " the secret book ",
        price: "10Dt",
      auteur: "auteur3",
        image:
            "https://m.media-amazon.com/images/I/81uuW9VL7fL._AC_UL600_FMwebp_QL65_.jpg"),
   
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String auteur;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.auteur,
      required this.image});
}