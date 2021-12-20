import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teaheaven/assamtea.dart';

class BlackTea extends StatefulWidget {
  const BlackTea({Key? key}) : super(key: key);

  @override
  _BlackTeaState createState() => _BlackTeaState();
}

class _BlackTeaState extends State<BlackTea>
{
  int _currentIndex = 0;
  final List _children = [];
  @override
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
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
                    'Black Tea',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 180),
                      child: Text(
                        'All items currently on store',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.end,
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
                            'Earl Grey Tea',
                            'https://s.pngkit.com/png/small/450-4508113_earl-grey-tea.png',
                            '15',
                            Color(0xFFF3E3C4),
                            Color(0xFF0f0f0f),
                            '300 gram'),
                        SizedBox(height: 23),
                        _buildListItem(
                            'Darjeeling Tea',
                           'https://www.jayshreetea.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/R/I/RISHEEHAT_FTGFOP1_FLOWERY_EX12_3316.png',
                            '17',
                            Color(0xFFC6F4BF),
                            Color(0xFF0f0f0f),
                            '300 gram'),
                        SizedBox(height: 23),
                        _buildListItem(
                            'English Breakfast Tea',
                            'https://www.pngfind.com/pngs/m/501-5015325_tea-english-breakfast-black-tea-earl-grey-tea.png',
                            '12',
                            Color(0xFFA6D388),
                            Color(0xFF0f0f0f),
                            '350 Grams'),

                        SizedBox(height: 23),
                        _buildListItem(
                            'Assam Tea',
                           'https://www.pngkit.com/png/detail/422-4227018_sun-moon-lake-assam-tea.png', '19',
                            Color(0xFFFAD692),
                            Color(0xFF0f0f0f),
                            '350 Grams'),
                      ],
                    ),
                  ),

                  ],
                ),
              ),
            ),
      ),
            ],),
          ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Color(0xFF9CC99f)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined, color: Color(0xFF9CC99f)),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFF9CC99f)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Color(0xFF9CC99f)),
            label: 'User',
          ),
        ],
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
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
              Center(
                child: Text(
                  teaName,
                  style: GoogleFonts.notoSans(
                    fontSize: 17.0,
                    color: textColor,
                  ),
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
                    //SizedBox(width: 20.0),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 30,
                      width: 80,

                      child: ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AssamTea()));},
                        child:Icon(Icons.arrow_forward_ios),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF45994D),
                          shape: CircleBorder(),
                          // padding: EdgeInsets.only(left: 10),
                        ),
                      )
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

