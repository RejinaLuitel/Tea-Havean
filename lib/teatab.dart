import 'package:flutter/material.dart';

class TeaTab extends StatefulWidget {
  const TeaTab({Key? key}) : super(key: key);

  @override
  _TeaTabState createState() => _TeaTabState();
}

class _TeaTabState extends State<TeaTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
          _buildListView('Matcha Tea',
              '30',
              'https://w7.pngwing.com/pngs/663/950/png-transparent-green-tea-matcha-flowering-tea-oolong-green-tea-background-food-leaf-tea.png',
             ),
        ],
      ),
    );
  }
  _buildListView(String teaName, String price, String imgPath){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
            width: 75.0,
            height: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Color(0xFFFFE3DF)
            ),

          ),
        ],
      ),
    );
  }
}
