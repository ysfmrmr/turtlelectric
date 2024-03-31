import 'package:flutter/material.dart';
import 'package:turtlelectric/Chart/buildchart.dart';

class SpecsNew extends StatefulWidget {
  const SpecsNew({super.key});

  @override
  State<SpecsNew> createState() => _SpecsNewState();
}

class _SpecsNewState extends State<SpecsNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 167, 255, 164),
          Color.fromARGB(255, 236, 255, 235),
        ],
      )),
      child: const ChartIndex(),
    );
  }
}