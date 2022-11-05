import 'package:flutter/material.dart';
import 'package:myresume/inc/size_config.dart';

class MyResume extends StatelessWidget {
  final int index;
  final bool mysetstate;
  const MyResume({
    Key? key,
    required this.index,
    required this.mysetstate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: displayHeight(context) / 2.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft:
                        mysetstate ? Radius.zero : const Radius.circular(30),
                    bottomLeft:
                        mysetstate ? Radius.zero : const Radius.circular(30),
                    topRight: const Radius.circular(30),
                    bottomRight: const Radius.circular(30)),
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 15),
                child: Row(
                  children: [
                    if (!mysetstate) ...[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "Resume",
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ] else ...[
                      Expanded(
                        child: Align(
                          alignment: mysetstate
                              ? Alignment.topLeft
                              : Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 20, right: 10, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Software Developer",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "170K-500k/monthly",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 10,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Oluwafemi has 5 years of Expreience in web app,Php and Mobile app Development. His work encompasses everything from idea and user experience",
                                  style: TextStyle(
                                    wordSpacing: 2,
                                    letterSpacing: 2.4,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/flutter_ui_dev_logo.png"),
                  ),
                  title: const Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "N-Tech System",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: const Text(
                    "2021-2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Text("I joined the N-tech Team a ")),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 5,
                ),
                ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/flutter_ui_dev_logo.png"),
                  ),
                  title: const Text(
                    "Software Developer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Don Bosco Radio",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: const Text(
                    "2019-2020",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 7, left: 25),
                  child: Text(
                    " I joined the Don Bosco Radio Team to help and manage and rebuild the existing software",
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 5,
                ),
                ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/flutter_ui_dev_logo.png"),
                  ),
                  title: const Text(
                    "Php Junior Developer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "N-Tech System",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: const Text(
                    "2017-2018",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Text("I joined the N-tech Team a ")),
              ],
            ),
          ),
        ],
      ),
    );
  }
  // Widget listdata(){
  //   return
  // }
}
