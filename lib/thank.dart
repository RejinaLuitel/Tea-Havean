import 'package:flutter/material.dart';
import 'package:teaheaven/welcome.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        color: Color(0xFF45994D),
        child: Column(
          children: [
            Center(
              //height: 80,
              //padding: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(right: 35, top: 100.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Icon(Icons.check, color: Colors.white, size: 100),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Thank You!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Payment Done Successfully',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Image.network(
                      "https://www.pngfind.com/pngs/m/630-6308528_white-nopal-mug-11oz-right-view-mug-hd.png",
                      width: 80,
                      height: 80,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      //child: Icon(Icons.check, color: Colors.white,),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 50, right: 50),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.subtitle1,
                    children: [
                      TextSpan(
                          text:
                              "To celebrate your first purchase, your package will include 2 Tea Haven cup as your gift.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.face,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Welcome()));
                    },
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF45994D),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
