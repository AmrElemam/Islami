import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/detailsscreen/suradetailsscreen/suraverse.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suraDetails";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: const Color(0xCCF8F8F8),
                      borderRadius: BorderRadius.circular(25)),
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return VerseWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                  ),
                )),
    );
  }

  void loadfile(int index) async {
    String filecontect =
        await rootBundle.loadString("assets/files/suras/${index + 1}.txt");
    verses = filecontect.trim().split("\n");
    setState(() {});
  }

  List<String> verses = [];
}

class SuraDetailsScreenArgs {
  int index;
  String title;

  SuraDetailsScreenArgs(this.index, this.title);
}
