import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //onPress() => Navigator.pushNamed(context, 'basic_design');
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.grid_view_rounded,
              color: Colors.blue,
              text: 'General',
              heroTag: 'btnGeneral',
              onPress: () => Navigator.pushNamed(context, 'scroll_screen'),
            ),
            _SingleCard(
              icon: Icons.directions_bus_sharp,
              color: const Color.fromARGB(255, 165, 81, 180),
              text: 'Transport',
              heroTag: 'btnTransport',
              onPress: () => Navigator.pushNamed(context, 'basic_design'),
            ),
          ],
        ),
        const TableRow(
          children: [
            _SingleCard(
                icon: Icons.shopping_bag,
                color: Color.fromARGB(255, 241, 20, 94),
                text: 'Shopping'),
            _SingleCard(
                icon: Icons.text_snippet_sharp,
                color: Colors.orange,
                text: 'Bills'),
          ],
        ),
        const TableRow(
          children: [
            _SingleCard(
                icon: Icons.movie_filter,
                color: Colors.indigoAccent,
                text: 'Entertainment'),
            _SingleCard(
                icon: Icons.local_grocery_store_sharp,
                color: Colors.lightGreen,
                text: 'Grocery'),
          ],
        ),
        const TableRow(
          children: [
            _SingleCard(
                icon: Icons.gamepad, color: Colors.redAccent, text: 'Games'),
            _SingleCard(
                icon: Icons.signal_cellular_alt,
                color: Colors.teal,
                text: 'Connectivity'),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Object? heroTag;
  final Function()? onPress;
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    this.heroTag,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: heroTag,
            elevation: 0,
            onPressed: onPress,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
