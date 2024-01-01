import 'package:flutter/material.dart';

class SetStatePage extends StatefulWidget {
  const SetStatePage({super.key});

  @override
  _ColorTogglerPageState createState() => _ColorTogglerPageState();
}

class _ColorTogglerPageState extends State<SetStatePage> {
  bool _isRed = true;
  void _toggleColor() {
    setState(() {
      _isRed = !_isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: _isRed ? Colors.red : Colors.indigo,
      ),
      onPressed: _toggleColor,
      child: const Text('Change my Color!'),
    );
  }
}
