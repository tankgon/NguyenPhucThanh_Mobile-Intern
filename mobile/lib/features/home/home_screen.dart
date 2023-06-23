import 'package:flutter/material.dart';
import 'package:jokee_single_serving_app/features/home/widgets/story_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 8,
                  height: size.height / 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/logo.png')),
                  ),
                ),
                const Row(children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Handicrafted by',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text('Jim HLS'),
                      ],
                    ),
                  ),
                  CircleAvatar(backgroundImage: AssetImage('images/avata.png'))
                ]),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height / 5,
            color: Colors.green,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A joke a day keeps the doctor away',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  Text(
                      'If you joke wrong way, your teeth have to pay. (Serious)',
                      style: TextStyle(color: Colors.white))
                ]),
          ),
          StoryView(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: size.width / 3,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'This is Funny!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: size.width / 3,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'This is not Funny!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 1,
                color: Colors.black12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  'This appis created as part of Hlsolutions progra. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor-mation contained on this site.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              const Text(
                'Copyright 2021 HLS',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
            ]),
      ]),
    );
  }
}
