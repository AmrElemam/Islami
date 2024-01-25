import 'package:flutter/material.dart';
import 'package:islami/detailsscreen/hadethdetailsscreen/hadethdetailsscreen.dart';
import 'package:islami/home/tabs/hadethtab/hadeth.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadethDetailsScreen.routeName,
              arguments: hadeth);
        },
        child: Text(
          hadeth.title,
          style: const TextStyle(
              fontSize: 25, fontFamily: "Inter", fontWeight: FontWeight.w400),
        ));
  }
}
