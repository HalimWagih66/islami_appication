import 'package:flutter/material.dart';
import 'package:islami_application/home%20screen/quran_tap/quran_tap.dart';
import 'package:islami_application/home%20screen/radio_tap/radio_tap.dart';
import 'package:islami_application/home%20screen/tasbeh_tap/tasbeh_tap.dart';

import 'hadeth_tap/hadeth_tap.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selctedIndexTap = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background/background_home_screen.png"),
          fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selctedIndexTap,
          onTap: (index){
            setState(() {
              selctedIndexTap = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran",backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "Hadith",backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Tasbih",backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio",backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
        body: taps[selctedIndexTap],
      ),
    );
  }
  List<Widget> taps = [
    Quran_Tap(),
    Hadeth_Tap(),
    Tasbeh_Tap(),
    Radio_Tap(),
  ];
}
