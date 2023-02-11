import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _State();
}

class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double widthCell = MediaQuery.of(context).size.width;
    double heightCell = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: widthCell,
            height: heightCell*0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/loginimg.png"
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            width: widthCell,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text(
                  "Olá",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  )
                ),
                Text(
                    "Entre na sua conta",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                    )
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                    )
                    ),
                  )
                )
              ],
            )
          )
        ],
      )
    );
  }
}
