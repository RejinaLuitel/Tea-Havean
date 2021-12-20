import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teaheaven/assamtea.dart';
import 'package:teaheaven/payment.dart';


class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart>
{
 
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
                    'Shopping Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 210, right: 20),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.subtitle1,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),

                                child: Icon(
                                  Icons.circle,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextSpan(text: "A total of 3 piece",
                            style:TextStyle(color: Colors.white,)
                            ),
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
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                      children: [

                  Container(
                    height: 1000,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        _buildListItem(
                            'Matcha Tea',
                            'https://w7.pngwing.com/pngs/663/950/png-transparent-green-tea-matcha-flowering-tea-oolong-green-tea-background-food-leaf-tea.png',
                            '30',
                            Color(0xFFA6D388),
                            Color(0xFF0f0f0f),
                            '300 gram'),
                        SizedBox(height: 20),
                        _buildListItem(
                            'Matcha Tea',
                            'https://w7.pngwing.com/pngs/663/950/png-transparent-green-tea-matcha-flowering-tea-oolong-green-tea-background-food-leaf-tea.png',
                            '30',
                            Color(0xFFA6D388),
                            Color(0xFF0f0f0f),
                            '300 gram'),
                        SizedBox(height: 20),
                        _buildListItem(
                            'Zen Super Tea',
                            'https://toppng.com/uploads/preview/black-tea-11551056879qa3feh2cnt.png',
                            '30',
                            Color(0xFFFAD692),
                            Color(0xFF0f0f0f),
                            '350 Grams'),
                        SizedBox(height: 20),
                    Text('Cargo Detail',  style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('2102. Street Pearl Apt.'),

                        Text('matthewkeller@gmail.com'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('Hopetown, Galiliee-06800'),

                        Text('+91 7002102402'),
                      ],),
                    Divider(color: Colors.black),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('Subtotal'),
                        Text('\$76.00'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('Cargo Charges'),
                        Text('\$8.00'),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('Total: \$84',style:TextStyle(fontSize: 24, color: Colors.green),),

                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: ElevatedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));},

                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 25,

                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:Color(0xFF45994D),
                                padding:
                                const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                        ),
                      ],
                    ),


          ],),
                ),
                  ],
                ),
              ),
            ),
      ),
            ],),
          ),
    );
  }
  _buildListItem(String teaName, String imgPath, String price, Color bgColor,
      Color textColor, String gram) {
    return
      Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          height: 100.0,
          width: 320.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: bgColor,
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,

            children: [
              Hero(
                tag: teaName,
                child: Row(
                  children: [
                    Container(
                    // padding: EdgeInsets.only(left: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       shape: BoxShape.circle,
                      ),
                         child: Center(
                            child: Image.network(imgPath, height: 57.0, width: 57.0),
                          ),
              ),
              SizedBox(width: 25.0),
    Column(
    children: [
              Text(
                teaName,
                style: GoogleFonts.notoSans(
                  fontSize: 17.0,
                  color: textColor,
                ),
              ),
              Text(
                '\$' + price,
                style: GoogleFonts.notoSans(
                  fontSize: 17.0,
                  color: textColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.subtitle1,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    TextSpan(text: gram),
                  ],
                ),
              ),
            ],
          ),
                    SizedBox(width: 90.0),
                   Column(

                     children:[
                       Icon(Icons.add, color:Color(0xFF45994D)),
                       SizedBox(height: 10.0),
                       Text('1',style: TextStyle(color: Color(0xFF45994D)),),
                       SizedBox(height: 10.0),
                       Icon(Icons.remove,color: Color(0xFF45994D)),
                     ],
                   ),
          ]
                ),
          ),
          ],
    ),
    ),
    ),
    );
  }

  }

