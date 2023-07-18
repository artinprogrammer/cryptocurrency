import 'package:cryptocurrency/core/constants/color_constants.dart';
import 'package:cryptocurrency/features/feature_converter/presentation/screens/converter_screen.dart';
import 'package:cryptocurrency/features/feature_home/presentation/screens/home_screen.dart';
import 'package:cryptocurrency/features/feature_search/presentation/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../cubit/bottom_nav_cubit.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  List screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ConverterScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: ColorConstants.scfBackgroundColor,
              body: screens[state],
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: BottomAppBar(
                  color: Colors.transparent,
                  height: height / 10,
                  child: GlassmorphicContainer(
                    width: width,
                    height: height / 10,
                    blur: 50,
                    linearGradient: LinearGradient(colors: [
                      ColorConstants.bottomNavigationGlassColor,
                      ColorConstants.bottomNavigationGlassColor,
                    ]),
                    borderGradient: const LinearGradient(colors: [
                      Colors.transparent,
                      Colors.transparent,
                    ]),
                    border: 0,
                    borderRadius: 32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavCubit>(context)
                                .changeSelectedPage(0);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  size: 35,
                                  color: state == 0 ? Colors.white : Colors.grey,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      color:
                                          state == 0 ? Colors.white : Colors.grey,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavCubit>(context)
                                .changeSelectedPage(1);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 35,
                                  color: state == 1 ? Colors.white : Colors.grey,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      color:
                                          state == 1 ? Colors.white : Colors.grey,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavCubit>(context)
                                .changeSelectedPage(2);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.conversation_bubble,
                                  size: 35,
                                  color: state == 2 ? Colors.white : Colors.grey,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Converter",
                                  style: TextStyle(
                                      color:
                                          state == 2 ? Colors.white : Colors.grey,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
