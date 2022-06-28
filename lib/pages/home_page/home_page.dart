import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: linearGradientGlobal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Task', style: TextStyle(color: Colors.white)),
            RichText(
              text: TextSpan(
                text: '3 Projects',
                style: TextStyle(color: Colors.white),
                children: const <TextSpan>[
                  TextSpan(
                      text: '•', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '36 Tasks'),
                ],
              ),
            ),
            Spacer(),
            buildBottomAppBar(),
          ],
        ),
      ),
    );
  }
}

class buildBottomAppBar extends StatelessWidget {
  const buildBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorDef.gradientDark,
              blurRadius: 6,
              offset: Offset(0, -3), // changes position of shadow
            ),
          ],
          gradient: linearGradientBottomBar,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.folder_outlined, color: Colors.white),
              SizedBox(width: 12),
              Text(
                'Projects',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),

          Icon(
            CupertinoIcons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
