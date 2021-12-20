import 'package:flutter/material.dart';
import 'package:teaheaven/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Image.network(
                  'https://i0.wp.com/gopaldharaindia.com/wp-content/uploads/2017/04/How-Can-Green-Tea-Help-You-Lose-Weight-1-1024x478.jpg',
                  height: 550,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 170, left: 30),
                    child: Text(
                      'Tea Haven',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 150, left: 30),
                    child: Text(
                      'Find and order high quality tea varieties',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 10, right: 10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => MyLogin()),
                  );
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF45995D),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0, left: 10, right: 10),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF508141),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                )),
          ),
        ],
      ),
    );
  }
}
