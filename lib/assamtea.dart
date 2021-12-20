import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class AssamTea extends StatefulWidget {
  @override
  _AssamTeaState createState() => _AssamTeaState();
}

class _AssamTeaState extends State<AssamTea> {
  double _currentSliderValue = 20;

  void initState() {
    super.initState();
  }

  var rating = 0.0;
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
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                'Assam Tea',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Icon(
                                Icons.terrain,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextSpan(
                              text: "Indian tea",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Temperature:95 degree C water',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Sleep Time : 3 mins',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 5, right: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Padding(padding: EdgeInsets.only(top: 20, left: 10)),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: Text(''), flex: 9),
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(80.0),
                                  child: Image.network(
                                    'https://e7.pngegg.com/pngimages/183/65/png-clipart-cup-of-tea-earl-grey-tea-coffee-cup-tea-cup-cafe-tea-thumbnail.png',
                                    alignment: Alignment.topLeft,
                                  )),
                              flex: 4,
                            ),
                            Expanded(child: Text(''), flex: 9)
                          ],
                        ),
                      ),
                      Container(
                        child: SmoothStarRating(
                          rating: rating,
                          size: 25,
                          borderColor: Colors.yellow,
                          color: Colors.yellow,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 4,
                          allowHalfRating: false,
                          spacing: 2.0,
                          onRatingChanged: (value) {
                            setState(() {
                              rating = value;
                            });
                          },
                        )),

                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.subtitle1,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(
                                  Icons.coffee,
                                  size: 19,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            TextSpan(text: '212 likes'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Quantity",
                                  //textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        '350 grams',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueGrey),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          primary: Color(0xFFEFFEE8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          )),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        '600 grams',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueGrey),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          primary: Color(0xFFEFFEE8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          )),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        '950 grams',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueGrey),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          primary: Color(0xFFEFFEE8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Item count",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            primary: Colors.blueGrey.shade100),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            primary: Colors.blueGrey.shade100),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Strength Level",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Slider(
                                            activeColor: Colors.black,
                                            value: _currentSliderValue,
                                            max: 100,
                                            divisions: 5,
                                            label: _currentSliderValue
                                                .round()
                                                .toString(),
                                            onChanged: (doublevalue) {
                                              setState(() {
                                                // _currentSliderValue = value;
                                              });
                                            }),
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 25),
                            focusColor: Colors.black,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            // labelText: 'Username',
                            hintText: 'Add notes for your order',
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Total:',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            ' \$' + '44',
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Add to cart',
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 15),
                                primary: Color(0xFF45994D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
