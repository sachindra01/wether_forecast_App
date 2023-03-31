import 'dart:developer';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/constants/constants.dart';
import 'package:wether_app/logic/models/weather_model.dart';


class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {


  TextEditingController textController = TextEditingController(text: "");
 
  @override
  void initState() {
    setState(() {
      
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 65, 89, 224),
              Color.fromARGB(255, 83, 92, 215),
              Color.fromARGB(255, 86, 88, 177),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              AnimSearchBar(
                rtl: true,
                width: 400,
                color: const Color(0xffffb56b),
                textController: textController,
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 26,
                ),
                onSuffixTap: () async {
                  textController.text == ""
                      ? log("No city entered")
                      : setState(() {
                          // _myData = getData(false, textController.text);
                        });

                  FocusScope.of(context).unfocus();
                  textController.clear();
                },
                style: f14RblackLetterSpacing2,
                  onSubmitted: (value) {  },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kathmandu',
                      style: f24Rwhitebold,
                    ),
                    height25,
                    Text(
                      "desc",
                      style: f16PW,
                    ),
                    height25,
                    Text(
                      "10°C",
                      style: f42Rwhitebold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
