import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String firstLinkUrl = 'https://www.google.com';
  final String secondUrl = 'https://www.linkedin.com';
  final String thirdUrl = 'https://www.youtube.com';
  final String fourtyUrl = 'https://www.facebook.com';
  final String fiftyUrl = 'https://www.skype.com';

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Hata: $url açılamadı.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Herkese Lazım Sayfalar',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Liklerimiz!',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  _launchUrl(firstLinkUrl);
                },
                child: Text(
                  'Google',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  _launchUrl(secondUrl);
                  // İkinci link ve diğer linkler buraya eklenebilir.
                },
                child: Text(
                  'Linkedin',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 4, 84, 150),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  _launchUrl(thirdUrl);
                  // İkinci link ve diğer linkler buraya eklenebilir.
                },
                child: Text(
                  'Youtube',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  _launchUrl(fourtyUrl);
                  // İkinci link ve diğer linkler buraya eklenebilir.
                },
                child: Text(
                  'Facebook',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 63, 161, 241),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  _launchUrl(fiftyUrl);
                  // İkinci link ve diğer linkler buraya eklenebilir.
                },
                child: Text(
                  'Skype',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
