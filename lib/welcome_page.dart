import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                        "img/profile1.png"
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 70,),
            Container(
              width: widthCell,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Bem vindo!",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      )
                  ),
                  Text(
                      "a@a",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[500],
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 300,),
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
                    "Sair",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                ),
              ),
            ),
          ],
        )
    );
  }
}
