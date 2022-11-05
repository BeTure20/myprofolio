import 'package:flutter/material.dart';
import 'package:myresume/inc/size_config.dart';

class Portfolio extends StatelessWidget {
  final int index;
  final bool mysetstate;
  const Portfolio({
    Key? key,
    required this.index,
    required this.mysetstate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: displayHeight(context) / 2.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    bottomLeft: const Radius.circular(30),
                    topRight:
                        mysetstate ? Radius.zero : const Radius.circular(30),
                    bottomRight:
                        mysetstate ? Radius.zero : const Radius.circular(30)),
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Row(
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(""),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            mysetstate ? '' : "Portfolio",
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
