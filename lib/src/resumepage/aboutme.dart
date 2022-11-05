import 'package:flutter/material.dart';
import 'package:myresume/inc/size_config.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/images/profile.png",
                fit: BoxFit.fill,
                height: displayHeight(context) / 2.2,
              ),
            ),
            // child: Container(
            //   width: 200,
            //   height: displayHeight(context) / 2,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(30),
            //       image: const DecorationImage(
            //         image: AssetImage(
            //           "assets/images/profile.png",
            //         ),
            //         fit: BoxFit.cover,
            //       ),
            //       boxShadow: const [
            //         BoxShadow(
            //             offset: Offset(0, 4),
            //             blurRadius: 4,
            //             color: Colors.black26)
            //       ]),
            // ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Gbajuola  Oluwafemi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter Mobile Developer",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    "Develop and design new components for our web app, on the backend and frontend Develop and design new components for our web app, on the backend and frontend",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      child: Column(
                        children: const [
                          Text(
                            "10",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Top")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          Text(
                            "3",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Years")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          Text(
                            "75",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Contacts")
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: displayWidth(context) * 0.35, height: 60),
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ))),
                  onPressed: () {},
                  child: Text("Call".toUpperCase()),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: displayWidth(context) * 0.35, height: 60),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ))),
                  onPressed: () {},
                  child: Text("Message".toUpperCase()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
