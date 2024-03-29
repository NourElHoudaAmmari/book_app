import 'package:flutter/material.dart';
import 'package:book_app/BookList.dart';
import 'package:book_app/model/book.dart';
import 'bookdetails.dart';
import 'Panier.dart';
import 'Commande.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Livres",
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home:BookList(),
    );
  }
}
class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des livres'),
        actions: [
          IconButton(
            icon: const Icon(Icons.analytics),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommandePage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PanierPage(),
                ),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(book: books[index]),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${books[index].image}'),
                ),
                title: Text(books[index].titre),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}