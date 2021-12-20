import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teaheaven/welcome.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({ Key? key }) : super(key: key);

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
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 30, left:10, right: 10),

              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                    Spacer(),
                    Text("Sign Up", style: TextStyle(
                      fontSize:25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 10, bottom:20),
alignment: Alignment.topLeft,
              child: Text('Log In', style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),

                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText:'Username',
                          labelText:' Username',
                          fillColor: Color(0xFFC6D4BF),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)),
                        ),

                      ),
                      SizedBox(height: 25),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText:'Password',
                          labelText:' Password',
                            fillColor: Color(0xFFC6D4BF),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: Text("Forgot Your Password?", style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0, left: 10, right: 10),
                        child: ElevatedButton(
                           onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Welcome()));
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF508141),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            )),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Image.network(
                              'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                              height: 26,
                              width: 26,
                            ),
                            label: Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFD8E8D1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                            )),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png',
                              height: 26,
                              width: 26,
                            ),
                            label: Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFD8E8D1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
