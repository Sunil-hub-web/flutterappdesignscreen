import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/newdesign/MyButton.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "SUSHI MAN",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.all(50.0),
                child: Image.asset("assets/images/salmon_sushi.png")
            ),
             SizedBox(
              height: 20,
            ),
            Text("THE TASTE OF JAPANESE FOOD",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 30,
              color: Colors.white
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Feel the taste of the most popular japanese food from anywhere and anytime",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 15,
              color: Colors.grey.shade300,
              height: 2,
            ),),
             SizedBox(
              height: 15,
            ),
            MyButton(
                text: "Get Started",
                onTop: (){
                  Navigator.pushNamed(context, "/menupage");
                })
          ],
        ),
      ),
    );
  }
}
