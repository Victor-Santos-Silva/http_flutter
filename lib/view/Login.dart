import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00471C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Texto Login
          const Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //Email
          Container(
            margin: EdgeInsets.all(20),
            width: 350,
            child: TextField(
              style: TextStyle(color: Colors.white), // Cor do texto digitado
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                hintText: "Email:",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Senha
          Container(
            margin: EdgeInsets.all(20),
            width: 350,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                hintText: "Senha:",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          //Botão de Entrar
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 10),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffA5FFC5),
                  padding: EdgeInsets.all(13)),
              child: Text(
                "Entrar",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
