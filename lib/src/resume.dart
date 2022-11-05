import 'dart:math';

import 'package:flutter/material.dart';

import 'package:myresume/inc/size_config.dart';
import 'package:myresume/src/resumepage/aboutme.dart';
import 'package:myresume/src/resumepage/myportfolio.dart';
import 'package:myresume/src/resumepage/myresume.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  late PageController _pageController;
  final int _currentPage = 1;
  var viewportFraction = 0.80;

  bool mysetstate = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: _currentPage, viewportFraction: viewportFraction);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    "MY Resume",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          _pageController = PageController(
                              viewportFraction: (value == 1) ? 0.80 : 1.0);
                          if (value != 1) {
                            mysetstate = true;
                          } else {
                            mysetstate = false;
                          }
                        });
                      },
                      itemCount: 3,
                      padEnds: viewportFraction == 1.0 ? false : true,
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return carouselCard(index, mysetstate);
                      }))
            ],
          ),
        ),
      ),
    );
  }

  carouselCard(int index, bool mysetstate) {
    if (index == 2) {
      return MyResume(index: index, mysetstate: mysetstate);
    } else if (index == 0) {
      return Portfolio(index: index, mysetstate: mysetstate);
    } else {
      return const Aboutme();
    }
  }
}
