import 'package:flutter/material.dart';
import 'package:school_app/Utils/colors.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kheaderColor,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
              child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: "Wed",
                    style: TextStyle(
                        color: textColor,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                        text: "10 Oct",
                        style: TextStyle(
                            color: textColor,
                            letterSpacing: -1,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 7,
                          spreadRadius: 7,
                          color: Colors.blueGrey.withOpacity(0.2),
                        ),
                      ],
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Profile Image.png")),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Moh3n",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w900,
                            color: textColor,
                            letterSpacing: -0.5),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "اینجا لیستی از برنامه‌ها است \n نیاز به بررسی...",
                        style: TextStyle(
                          height: 1.8,
                          color: textColor.withOpacity(0.75),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
