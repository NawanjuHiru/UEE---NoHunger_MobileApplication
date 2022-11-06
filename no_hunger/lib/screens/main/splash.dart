///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:no_hunger/screens/main/home.dart';

Future<FirebaseApp> _initializeFirebase() async {
  FirebaseApp firebaseApp = await Firebase.initializeApp();

  return firebaseApp;
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xff3a57e8),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ///***If you have exported images you must have to copy those images in assets/images directory.
              Image(
                image: AssetImage("assets/images/Donation.png"),
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment(-0.3, 0.9),
                child: Text(
                  "No",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.2, 0.9),
                child: Text(
                  "Hunger",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                    color: Color(0xfffba808),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, 0.6),
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    color: Color(0xfffffffff),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xff3a57e8),
                    height: 40,
                    minWidth: 140,
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
