import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.80),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black.withOpacity(0.80),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Country Info App ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            bodyWidget: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/3e/22/99/3e229924f205f169eb8941cd6e43afad.gif'),
              )),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Get Latest Informations ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            bodyWidget: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://static01.nyt.com/images/2021/01/28/business/28Techfix-illo-print/27Techfix-illo-print-articleLarge.gif?quality=75&auto=webp&disable=upscale'),
              )),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "All Info On your FingerTips",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            bodyWidget: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://static.politico.com/32/35/c4f103154bb3bedbfa7c1b318a91/datacrisis-lede-bydougchayka.gif'),
              )),
            ),
          ),
        ],
        done: Text(
          "Done",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'splash');
        },
        next: Text("Next"),
        showNextButton: true,
      ),
    );
  }
}
