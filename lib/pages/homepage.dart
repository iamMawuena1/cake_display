import 'package:cake_clone_app/components/cake_tile.dart';
import 'package:cake_clone_app/components/cake_type.dart';
import 'package:cake_clone_app/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CakePage extends StatefulWidget {
  const CakePage({super.key});

  @override
  State<CakePage> createState() => _CakePageState();
}

class _CakePageState extends State<CakePage> {
  //LIST OF CAKE TYPES
  final List cakeType = [
    ['Birthday', true],
    ['Wedding', false],
    ['Cupcake', false],
    ['Relaxing', false],
    ['Chopping', false],
  ];
  //CAKE OPTIONS
  // final List cakeTilePage = [
  //   ['images/cake.jpg', 'Cake']
  // ];
  //USER CHOOSE CAKE TYPE
  void cakeTapped(int index) {
    setState(() {
      //LOOP FOR MAKING ALL SELECTION FALSE
      for (int i = 0; i < cakeType.length; i++) {
        cakeType[i][1] = false;
      }
      cakeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: kDefaultPadin),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          //text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadin),
            child: Text(
              'Find the best of cake, Enjoy',
              style: GoogleFonts.bebasNeue(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadin),
          //searchbar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadin),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your Cake',
                prefixIcon: Icon(Icons.search_outlined),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: designColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: designColor),
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadin),
          //CAKE TYPES
          // ignore: sized_box_for_whitespace
          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cakeType.length,
              itemBuilder: ((context, index) => CakeTypePage(
                    cakeType: cakeType[index][0],
                    isSelected: cakeType[index][1],
                    tapped: (() {
                      cakeTapped(index);
                    }),
                  )),
            ),
          ),
          //LIST TILE FOR CAKES
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CakeTilePage(
                  cakeImages: 'images/cake.jpg',
                  cakeName: 'Birthday',
                  cakePrice: '100.00',
                  cakeSubTitle: 'With fruit love',
                ),
                CakeTilePage(
                  cakeImages: 'images/cake.jpg',
                  cakeName: 'Suprise',
                  cakePrice: '150.00',
                  cakeSubTitle: 'With choclate love',
                ),
                CakeTilePage(
                  cakeImages: 'images/cake.jpg',
                  cakeName: 'Say Yes',
                  cakePrice: '200.00',
                  cakeSubTitle: 'With orange love',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
