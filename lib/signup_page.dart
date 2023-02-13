import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthCell = MediaQuery.of(context).size.width;
    double heightCell = MediaQuery.of(context).size.height;
    List images =["g.png","t.png","f.png"];
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
                          "img/signup.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: heightCell*0.16,),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 57,
                    backgroundImage: AssetImage(
                      "img/profile.png"
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: widthCell,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          hintText: "Seu melhor email",
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
                    "Inscrever-se",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            RichText(text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Já tem uma conta?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
              )
            )),
            SizedBox(height: widthCell*0.2,),
            RichText(text: TextSpan(
                text: "Se inscreva usando algum desses metodos",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15
                ),

            )),
            Wrap(
              children: List<Widget>.generate(
                  3, (index){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              "img/"+images[index]
                            ),
                          ),
                        );
              }
              ),
            )
          ],
        )
    );
  }
}
