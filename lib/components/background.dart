import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQuery.size.width, //Vai pegar largura completa
        height: mediaQuery.size.height, //Vai pegar altura completa
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/img2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: child,
      ),
    );
  }
}
