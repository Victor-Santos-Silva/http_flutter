import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Center(
                child: Text(
                  "Cadastro",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 500,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nome',
                ),
              ),
            ),
            Container(
              width: 500,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              height: 60,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Senha',
                ),
              ),
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () async {
                var client = http.Client();
                var url = 'http://10.92.198.38:4000/user/cadastro';
                var bodyRegistro = {
                  "name": "Victor dos Santos",
                  "email": "victor@email.com",
                  "password": "adminadmin",
                };
                try {
                  var response = await client.post(Uri.parse(url),
                      headers: {
                        "Content-Type": "application/json",
                      },
                      body: json.encode(bodyRegistro));
                  print(response.body);
                } finally {
                  client.close();
                }
              },
              child: Text('Cadastrar'),
            )
          ],
        ),
      ),
    );
  }
}
