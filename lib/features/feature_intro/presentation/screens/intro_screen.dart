import 'package:cryptocurrency/core/constants/color_constants.dart';
import 'package:cryptocurrency/features/feature_bottomnav/presentation/screens/main_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../../../core/constants/text_styles.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstants.scfBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height / 18),
            child: SizedBox(
              width: width,
              height: height / 1.7,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 30,
                    right: 30,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(20 / 360),
                      child: Container(
                        width: width / 1.16,
                        height: height / 3.5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                ColorConstants.introContainerTopRightGradient,
                                ColorConstants.introContainerBottomLeftGradient,
                              ]),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(32)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 64, left: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Credit card number",
                                style: TextStyles.introScreenTitelTxt,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                "4378 4324 0911 5467",
                                style: TextStyles.introScreenNumberTxt,
                              ),
                              const SizedBox(
                                height: 64,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name",
                                        style: TextStyles.introScreenTitelTxt,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "William Smith",
                                        style: TextStyles.introScreenDetailTxt,
                                      )
                                    ],
                                  ),
                                  Column(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height / 5,
                    right: 30,
                    left: 30,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-20 / 360),
                      child: GlassmorphicContainer(
                        width: width / 1.16,
                        height: height / 3.5,
                        borderRadius: 20,
                        blur: 15,
                        alignment: Alignment.topLeft,
                        border: 0,
                        linearGradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.white54, Colors.transparent],
                        ),
                        borderGradient: const LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 64, left: 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Credit card number",
                                style: TextStyles.introScreenTitelTxt,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                "4378 4324 0911 5467",
                                style: TextStyles.introScreenNumberTxt,
                              ),
                              const SizedBox(
                                height: 64,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name",
                                        style: TextStyles.introScreenTitelTxt,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "William Smith",
                                        style: TextStyles.introScreenDetailTxt,
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Exp.Date",
                                        style: TextStyles.introScreenTitelTxt,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "08/26",
                                        style: TextStyles.introScreenDetailTxt,
                                      )
                                    ],
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Exp.Date",
                                          style: TextStyles.introScreenTitelTxt,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "08/26",
                                          style:
                                              TextStyles.introScreenDetailTxt,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              "THE FUTURE",
              style: TextStyles.introScreenTitle,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            """Learn more about cryptocurrencies,
                look to the future
              """,
            style: TextStyles.introScreenDesc,
          ),
          const SizedBox(
            height: 16,
          ),
          // the next button
          Container(
            width: width / 4,
            height: width / 4,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      ColorConstants.introBottonTopRightGradient,
                      ColorConstants.introBottonBottomLeftGradient,
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(width / 4))),
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainWrapper()));
                  },
                  icon: const Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
