import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teaheaven/thank.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
              height: 80,
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 180, right: 20),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(
                              Icons.circle,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextSpan(
                            text: "Select a payment option",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                // width: double.infinity,
                // height: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30),
                           // height: 1000,
                            child: ElevatedButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                       //   Image.network(
                                       //      "https://www.iconsdb.com/icons/preview/green/paypal-xxl.png",
                                       //     height: 10,
                                       //     width: 10,
                                       //  // fit:BoxFit.cover
                                       // ),

                                        Text(
                                          'Paypal',
                                          style: TextStyle(
                                            fontSize: 20,

                                           color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary:Colors.white,
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 45, vertical: 25),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)),
                                    )),
                              ),
                         //SizedBox(width: 10),
                          Container(
                            // height: 1000,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Icon(Icons.credit_card, size: 40),
                                    Text(
                                      'Credit Card',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary:Color(0xFF45994D),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                )),
                          ),
                        ],
                            ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(" Card Holder", style: TextStyle(fontSize: 18),),
                      ),
                      Container(
                        // height: 1000,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Text(
                                  'Matthew Keller',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xFF1B2318)
                                  ),
                                ),
                                Icon(Icons.check_circle, color:Color(0xFF45994D)),
                              ],
                            ),
                            ],),
                            style: ElevatedButton.styleFrom(
                              primary:Color(0xFFDBEBD1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            )),
                      ),
SizedBox(height: 15),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(" Card Number", style: TextStyle(fontSize: 18),),
                      ),
                      Container(
                        // height: 1000,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                Text(
                                  '5270 4930 1923 1881',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Color(0xFF1B2318),
                                  ),

                                ),
                                Icon(Icons.check_circle, color:Color(0xFF45994D)),
                              ],
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary:Color(0xFFDBEBD1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            )),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            children:[

                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(" Expiry Date", style: TextStyle(fontSize: 18),),
                              ),
                          Container(
                            // height: 1000,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                    Text(
                                      'MM/YY',
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Color(0xFF1B2318)
                                      ),
                                    ),
                                    Icon(Icons.check_circle, color:Color(0xFF45994D)),
                                  ],
                                ),
                                ],),
                                style: ElevatedButton.styleFrom(
                                  primary:Color(0xFFDBEBD1),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                )),
                          ),
                          ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children:[

                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("CVV", style: TextStyle(fontSize: 18),),
                              ),
                           ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                    Text(
                                      '---',
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Color(0xFF1B2318)
                                      ),
                                    ),
                                    Icon(Icons.check_circle, color:Color(0xFF45994D)),
                                  ],
                                ),
    ],),
                                style: ElevatedButton.styleFrom(
                                  primary:Color(0xFFDBEBD1),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                )),


                            ],),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                        Text('Save the credit card',style:TextStyle(fontSize: 20, color: Colors.black),),
                          SwitchScreen()  ,
        ],
                      ),

                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Total: \$84',style:TextStyle(fontSize: 24, color: Colors.green),),

                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: ElevatedButton(
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYou()));},

                                child: Text(
                                  'Purchase Order',
                                  style: TextStyle(
                                    fontSize: 20,

                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary:Color(0xFF45994D),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                )),
                          ),
                        ],
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
class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
     // print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      //print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
            scale: 1.5,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.white12,
              activeTrackColor: Color(0xFFB9EB98),
              inactiveThumbColor: Colors.white12,
              inactiveTrackColor: Colors.blue,
            )
        ),
       //   Text('$textValue', style: TextStyle(fontSize: 20),)
        ]);
  }
}