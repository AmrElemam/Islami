import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String tasbeehText = "سبحان الله";
  double rotation = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 35, bottom: 40),
                          child: Image.asset("assets/images/headofsebha.png")),
                      Container(
                          margin: const EdgeInsets.only(top: 75),
                          child: GestureDetector(
                              onTap: () {
                                tasbeh();
                              },
                              child: Transform.rotate(
                                  angle:
                                      rotation * (3.14159265358979323846 / 180),
                                  child: Image.asset(
                                      "assets/images/bodyofsebha.png")))),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "عدد التسبيحات",
                    style: TextStyle(
                        fontFamily: "El Messiri",
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0x91B7935F),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Text("$counter",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 25)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFB7935F),
                    ),
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 5, bottom: 8),
                    child: Text(tasbeehText,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            fontFamily: "Inter")),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  void tasbeh() {
    if (tasbeehText == "سبحان الله" && counter == 33) {
      tasbeehText = "الحمد لله";
      counter = 0;
      setState(() {});
      return;
    } else if (tasbeehText == "الحمد لله" && counter == 33) {
      tasbeehText = "الله اكبر";
      counter = 0;
      setState(() {});
      return;
    } else if (tasbeehText == "الله اكبر" && counter == 33) {
      tasbeehText = "سبحان الله";
      counter = 0;
      setState(() {});
      return;
    }
    counter++;
    setState(() {
      rotation -= 45.0;
    });
  }
}
