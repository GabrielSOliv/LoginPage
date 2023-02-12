import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/signup_page.dart';

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
              children: [
                const Text(
                  "Olá",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  )
                ),
                const Text(
                    "Entre na sua conta",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                    )
                ),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.2),
                    )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Coloque seu email",
                        prefixIcon: Icon(Icons.email, color: Colors.orange,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0
                        )
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      )
                      ),
                    ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Senha",
                        prefixIcon: Icon(Icons.password_outlined, color: Colors.orange,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    const Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        )
                    ),
                  ],
                ),

              ],
            )
          ),
          SizedBox(height: 70,),
          Container(
            width: widthCell*0.5,
            height: heightCell*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: const Text(
                  "Entrar",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  )
              ),
            ),
          ),
          SizedBox(height: widthCell*0.2,),
          RichText(text: TextSpan(
            text: "Novo por aqui?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20
            ),
            children: [
              TextSpan(
                text: " Crie uma conta!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage()),
              )
            ]
          )),
        ],
      )
    );
  }
}
