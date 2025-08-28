import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: AnimatedLovePage(),
    );
  }
}

class AnimatedLovePage extends StatefulWidget {
  const AnimatedLovePage({super.key});

  @override
  State<AnimatedLovePage> createState() => _AnimatedLovePageState();
}

class _AnimatedLovePageState extends State<AnimatedLovePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _colorAnimation = ColorTween(begin: Colors.pink, end: Colors.red)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Ekran boyutuna göre yazı boyutu
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.08; // ekran genişliğinin %8'i kadar

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Text(
                'seni seviyom balım',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: _colorAnimation.value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
