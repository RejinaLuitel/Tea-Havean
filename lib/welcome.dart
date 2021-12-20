import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teaheaven/shoppingcart.dart';
import 'package:teaheaven/teatab.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int _currentIndex = 0;
  final List _children = [];
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }
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
              height: 90,
              padding: EdgeInsets.only(top: 50, left: 10),
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: Text(
                'Find and order your tea',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
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
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search for your tea',
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: TabBar(
                              controller: tabController,
                              isScrollable: true,
                              indicatorColor: Colors.black,
                              tabs: [
                                Tab(
                                  child: Text('Black',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                                Tab(
                                  child: Text('Green',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                                Tab(
                                  child: Text('Oolong',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                                Tab(
                                    child: Text('Rooibos',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black))),
                              ])),
                      SizedBox(height: 25),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildListView(
                                'Matcha Tea',
                                'https://w7.pngwing.com/pngs/663/950/png-transparent-green-tea-matcha-flowering-tea-oolong-green-tea-background-food-leaf-tea.png',
                                '30',
                                Color(0xFFA6D388),
                                Color(0xFF0f0f0f),
                                '300 gram'),
                            _buildListView(
                                'Zen Super Tea',
                                'https://toppng.com/uploads/preview/black-tea-11551056879qa3feh2cnt.png',
                                '30',
                                Color(0xFFFAD692),
                                Color(0xFF0f0f0f),
                                '350 Grams'),
                            _buildListView(
                                'Sencha Tea',
                                'https://banner2.cleanpng.com/20180301/oie/kisspng-longjing-tea-longjing-hangzhou-sencha-green-tea-longjing-tea-white-bowl-5a97f7e86b77e0.4398684115199088404402.jpg',
                                '30',
                                Color(0xFF9CC99F),
                                Color(0xFF0f0f0f),
                                '350 Grams'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 22.0, left: 10, right: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF508141),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 2.0,
                                color: Color(0xFF508141),
                              ),
                              primary: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            )),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Top Seller Varieties',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                    'https://www.vitamix.com/media/other/images/Iced-Matcha-Bubble-Tea-470-449.jpg',
                                    height: 100,
                                    width: 100),
                                Text('Macha Tea'),
                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                    'https://www.namhah.com/wp-content/uploads/2019/01/earl-grey-tea.jpg',
                                    height: 100,
                                    width: 100),
                                Text('Earl Grey Tea'),
                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                    'https://c.ndtvimg.com/2019-01/lvt7hom_rooibos-tea-for-diabetes_625x300_17_January_19.jpg',
                                     height: 100,
                                    width: 100),
                                Text('Rooibos Tea'),
                              ],
                            ),
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
   // new
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
             icon: IconButton(
                 onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ShoppingCart()));
                 },
                 icon: Icon(Icons.shopping_cart, color: Color(0xFF9CC99f)),
             ),
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

  _buildListView(String teaName, String imgPath, String price, Color bgColor,
      Color textColor, String gram) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 180.0,
          width: 130.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: bgColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: teaName,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.network(imgPath, height: 100.0, width: 100.0),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
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

        ),
      ),

    );

  }
}
