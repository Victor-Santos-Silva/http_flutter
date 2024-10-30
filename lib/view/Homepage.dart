import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (image != null) Image.network(image!),
          ElevatedButton(
            onPressed: () async {
              //Vou chamar a API e mortrar os dados no console.
              var url = "https://fakestoreapi.com/products/1";
              //Uri.parse () => Transforma uma String url em URL
              var response = await http.get(Uri.parse(url));

              /* setState(() {
                image = jsonResponse['image'];
              }); */

              var jsonResponse = convert.jsonDecode(response.body);

              print(jsonResponse['title']);
              print(jsonResponse['image']);
              print(jsonResponse['description']);
              print(jsonResponse['category']);
              print(jsonResponse['price']);
              print(jsonResponse['rating']);
              print(jsonResponse['rating']['rate']);
              print(jsonResponse['rating']['count']);
            },
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}
