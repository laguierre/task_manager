import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: linearGradientGlobal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: buildTitle(),
            ),
            SizedBox(height: 5),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Container(
                  height: size.height * 0.56,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: buildContainerCard(),
                ),
              ],
            )),
            buildButtonsTask(),
            SizedBox(height: 20),
            buildBottomAppBar(),
          ],
        ),
      ),
    );
  }
}

class buildContainerCard extends StatelessWidget {
  const buildContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: SvgPicture.asset(
                'lib/assets/images/undraw_next_tasks_re_5eyy.svg')),
        Text(
          'Proyect Awesome',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            minHeight: 10,
            valueColor: AlwaysStoppedAnimation<Color>(ColorDef.gradientDark),
            value: 6 / 10,
            backgroundColor: Colors.grey.withOpacity(0.25),
          ),
        ),
        SizedBox(height: 15),
        Text(
          '6 / 10 Completed',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'View Detail ',
              style: TextStyle(
                  color: ColorDef.gradientDark,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                  color: ColorDef.gradientDark,
                ))
          ],
        )
      ],
    );
  }
}

class buildTitle extends StatelessWidget {
  const buildTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Task',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 12),
        RichText(
          text: TextSpan(
            text: '3 Projects ',
            style: TextStyle(fontSize: 22),
            children: const <TextSpan>[
              TextSpan(text: ' • ', style: TextStyle(fontSize: 24)),
              TextSpan(text: ' 36 Tasks', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ],
    );
  }
}

class buildButtonsTask extends StatelessWidget {
  const buildButtonsTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedButton(text: 'Lastest', isSelected: true),
          RoundedButton(text: 'Least Done', isSelected: false),
          RoundedButton(text: 'Completed', isSelected: false),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.text, required this.isSelected})
      : super(key: key);
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? ColorDef.gradientLight : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : ColorDef.gradientDark,
            fontSize: 18),
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
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
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
