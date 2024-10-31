import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //cor de fundo
      backgroundColor: Color(0xff9be2b3),
      body: Column(
        // centralizando no meio do app
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Cadastro
          Container(
            height: 80,
            child: Center(
              child: Text(
                "Cadastro",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //Nome
          Container(
            width: 350,
            height: 80,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                hintText: 'Nome:',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          //Email
          Container(
            width: 350,
            height: 80,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Email:',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),

          //Senha
          Container(
            height: 80,
            width: 350,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Senha:',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),

          //Botao
          TextButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff478b61),
              foregroundColor: Colors.white,
              padding: EdgeInsets.all(15)
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
    );
  }
}
