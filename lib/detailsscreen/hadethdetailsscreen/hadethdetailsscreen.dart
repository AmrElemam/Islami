import 'package:flutter/material.dart';
import 'package:islami/detailsscreen/hadethdetailsscreen/hadethcontent.dart';
import 'package:islami/home/tabs/hadethtab/hadeth.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "hadethdetails";

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/background.png"))),
        child: Scaffold(
            appBar: AppBar(title: Text(args.title)),
            body: HadethContent(args.content)));
  }
}
