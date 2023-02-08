import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.45, 0.55],
            colors: [Color(0xff5EE8C5), Color(0xff30BAD6)],
          ),
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [
      Background(),
      MainContent(),
    ]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 40),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: SizedBox(width: double.infinity)),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
        //height: double.infinity,
        //fit: BoxFit.cover,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const _AlertWelcome(),
          );
        }, //=> Navigator.popAndPushNamed(context, 'home_screen'),
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff0098FA),
          shape: const StadiumBorder(),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class _AlertWelcome extends StatelessWidget {
  const _AlertWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 5,
      title: const Center(child: Text('Bienvenido')),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Column(
          mainAxisSize: MainAxisSize.min, //Se ajusta según el min del child
          children: const [
            Divider(thickness: 2),
            SizedBox(
              height: 10,
            ),
            Text('Esto es una demostración de diseño en Flutter'),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            )
          ]),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'))
      ],
    );
  }
}
