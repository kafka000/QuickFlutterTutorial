import 'package:flutter/material.dart';

class InheritedColorToggler extends InheritedWidget {
  const InheritedColorToggler({
    super.key,
    required this.isRed,
    required this.toggleColor,
    required super.child,
  });

  final bool isRed;
  final void Function() toggleColor;

  // 1
  static InheritedColorToggler of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedColorToggler>()!;

  // 2
  @override
  bool updateShouldNotify(InheritedColorToggler old) => isRed != old.isRed;
}

class InheritedColorWidgetPage extends StatefulWidget {
  const InheritedColorWidgetPage({super.key});

  @override
  State<InheritedColorWidgetPage> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<InheritedColorWidgetPage> {
  bool isRed = true;

  void toggleColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedColorToggler(
      isRed: isRed,
      toggleColor: toggleColor,
      child: const InheritedWidgetPage(),
    );
  }
}

class InheritedWidgetPage extends StatelessWidget {
  const InheritedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorToggler = InheritedColorToggler.of(context);
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: colorToggler.isRed ? Colors.red : Colors.indigo,
      ),
      onPressed: colorToggler.toggleColor,
      child: const Text('Change my Color!'),
    );
  }
}
