import 'package:flutter/material.dart';


import '../../../../core/constants/color_constants.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.scfBackgroundColor,
        body: const Center(
          child: Text(
            "converter screen",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}