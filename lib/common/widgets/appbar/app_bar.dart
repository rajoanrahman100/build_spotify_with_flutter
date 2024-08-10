import 'package:build_spotify_with_flutter/common/helper/is_dark_mode.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatefulWidget {
  const BasicAppBar({super.key});

  @override
  State<BasicAppBar> createState() => _BasicAppBarState();
}

class _BasicAppBarState extends State<BasicAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.03)),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
