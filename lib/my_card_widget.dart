import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage("images/profile_avatar.jpg"),
              ),
              const Text(
                "Dmytro Pashko",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Mobile Tech Lead",
                style: TextStyle(
                  color: Colors.teal[50],
                  fontSize: 25,
                  fontFamily: "Teko",
                ),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 0.5,
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      size: 35,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+38(099)** *** **",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Cario",
                          color: Colors.teal.shade900),
                    )),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      size: 35,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "pashko.dmytro@gmail.com",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Cario",
                          color: Colors.teal.shade900),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
