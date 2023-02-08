import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.all(30),
            child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Oeschin Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 7),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconAndText(icon: Icons.call, text: 'CALL'),
        IconAndText(icon: Icons.moving_sharp, text: 'ROUTE'),
        IconAndText(icon: Icons.share, text: 'SHARE'),
      ],
    );
  }
}

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconAndText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
