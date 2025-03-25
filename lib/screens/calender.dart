import 'package:flutter/material.dart';
import 'package:school_app/Utils/colors.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = (MediaQuery.of(context).size);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topCenter,
          color: kCardColor,
          height: size.height,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 15),
                    RichText(
                      text: TextSpan(
                        text: "Oct",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: textColor),
                        children: const [
                          TextSpan(
                            text: "2025",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "امروز",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondTextColor,
                    fontSize: 18,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            height: size.height - 160,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      myCalendar("S", 7, true),
                      myCalendar("M", 8, true),
                      myCalendar("T", 9, true),
                      myCalendar("W", 10, false),
                      myCalendar("T", 11, true),
                      myCalendar("F", 12, true),
                      myCalendar("S", 13, true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container myCalendar(
    String weekDay,
    int date,
    bool isActive,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? secondTextColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 75,
      width: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600),
          ),
          Text(
            date.toString(),
            style: TextStyle(
                color: isActive ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
