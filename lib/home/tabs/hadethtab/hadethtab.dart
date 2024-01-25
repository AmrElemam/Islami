import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/tabs/hadethtab/hadeth.dart';
import 'package:islami/home/tabs/hadethtab/hadethtitle.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allahadeth.isEmpty) {
      loadfile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/hadethLogo.png")),
        Container(
            width: double.infinity,
            height: 3,
            color: Theme.of(context).primaryColor),
        const Text(
          "Ahadeth",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Container(
            width: double.infinity,
            height: 3,
            color: Theme.of(context).primaryColor),
        Expanded(
            flex: 3,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Center(child: HadethTitle(allahadeth[index]));
                },
                separatorBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 80),
                      color: Theme.of(context).primaryColor,
                      height: 2,
                      width: double.infinity,
                    ),
                itemCount: allahadeth.length))
      ],
    );
  }

  void loadfile() async {
    String filecontect =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = filecontect.trim().split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      String singlehadeth = ahadeth[i];
      List<String> lines = singlehadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      allahadeth.add(hadeth);
    }
    setState(() {});
  }

  List<Hadeth> allahadeth = [];
}
