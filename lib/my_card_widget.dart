import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri linkedinUri = Uri.parse('https://www.linkedin.com/in/dmitry-pashko');
final Uri githubUri = Uri.parse('https://github.com/Dmytro-Pashko');
final Uri mailtoUri = Uri.parse('mailto:pashko.dmytro@gmail.com');

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  Future<void> openWebUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

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
                backgroundImage: AssetImage('images/profile_avatar.jpg'),
              ),
              const Text(
                'Dmytro Pashko',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Mobile Tech Lead',
                style: TextStyle(
                  color: Colors.teal[50],
                  fontSize: 25,
                  fontFamily: 'Teko',
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
                      '+38(099)** *** **',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cario',
                          color: Colors.teal.shade900),
                    )),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    launchUrl(mailtoUri);
                  },
                  child: ListTile(
                      leading: const Icon(
                        Icons.email,
                        size: 35,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'pashko.dmytro@gmail.com',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Cario',
                            color: Colors.teal.shade900),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            openWebUrl(linkedinUri);
                          },
                          child: SvgPicture.asset("images/linkedin_icon.svg")),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            openWebUrl(githubUri);
                          },
                          child: SvgPicture.asset('images/github_icon.svg')),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
