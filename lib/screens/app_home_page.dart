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
                  alignment: Alignment.centerLeft,
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
                  textDirection: TextDirection.rtl,
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
                          image: AssetImage("assets/images/Profile Image.png"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "سلام محسن",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w900,
                              color: textColor,
                              letterSpacing: -0.5),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.end,
                          "اینجا لیستی از برنامه‌ها است \n ...نیاز به بررسی",
                          style: TextStyle(
                            height: 1.8,
                            color: textColor.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 220,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView(
              children: [
                seeAllItems(
                  "کلاس های امروز",
                  4,
                ),
                const SizedBox(height: 20),
                todayclassesitem("07:30", "ورزش",
                    "assets/images/Profile Image.png", "آقای فلان"),
                todayclassesitem("09:30", "ریاضی",
                    "assets/images/Profile Image.png", "آقای فلان"),
                const SizedBox(height: 20),
                seeAllItems("تکالیف امروز", 3),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      yourTaskItems(
                        Colors.red,
                        3,
                        " فیزیک از درس 2 تا 5 امتحان دارید",
                      ),
                      yourTaskItems(
                        Colors.green,
                        10,
                        " ریاضی از درس 2 تا 5 امتحان دارید",
                      ),
                      yourTaskItems(
                        Colors.blue,
                        5,
                        " علوم از درس 2 تا 5 امتحان دارید",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container yourTaskItems(Color color, int dayLeft, String courseTitle) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "آخرین مهلت",
            style: TextStyle(fontSize: 20, color: Colors.black26),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor: color,
              ),
              const SizedBox(width: 5),
              Text(
                "$dayLeft روزشمار",
                style: const TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 130,
            child: Text(
              courseTitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Row seeAllItems(title, number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "($number)",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Text(
          "مشاهده همه",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: secondTextColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Container todayclassesitem(time, title, profile, name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 110,
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.rtl,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                "AM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: const Text(
                        "کلاس 320",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profile),
                      radius: 12,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
