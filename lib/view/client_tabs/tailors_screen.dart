import 'package:flutter/material.dart';

class TailorsScreen extends StatefulWidget {
  const TailorsScreen({super.key});

  @override
  State<TailorsScreen> createState() => _TailorsScreenState();
}

class _TailorsScreenState extends State<TailorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tailors Screen"),
      ),
    );
  }
}
