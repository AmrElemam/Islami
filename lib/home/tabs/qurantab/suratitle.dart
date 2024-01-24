import 'package:flutter/material.dart';
import 'package:islami/detailsscreen/suradetailsscreen/suradetailsscreen.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, SuraDetailsScreen.routeName,
              arguments: SuraDetailsScreenArgs(index, title));
        },
        child:
            Center(child: Text(title, style: const TextStyle(fontSize: 25))));
  }
}
