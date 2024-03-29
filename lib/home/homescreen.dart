import 'package:flutter/material.dart';
import 'package:islami/home/tabs/hadethtab/hadethtab.dart';
import 'package:islami/home/tabs/qurantab/qurantab.dart';
import 'package:islami/home/tabs/radiotab/radiotab.dart';
import 'package:islami/home/tabs/sedhatab/sebhatab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homescreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          currentIndex: selectedTabIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: "quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: "radio"),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }
}
