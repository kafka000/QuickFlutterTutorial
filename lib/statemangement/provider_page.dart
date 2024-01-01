import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderColorToggler extends ChangeNotifier {
  bool _isRed = true;
  bool get isRed => _isRed;

  void toggleColor() {
    _isRed = !_isRed;
    notifyListeners();
  }
}

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  void _toggleColor(BuildContext context) {
    Provider.of<ProviderColorToggler>(context, listen: false).toggleColor();
  }

  @override
  Widget build(BuildContext context) {
    var isRed = Provider.of<ProviderColorToggler>(context).isRed;
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: isRed ? Colors.red : Colors.indigo,
      ),
      onPressed: () => _toggleColor(context),
      child: const Text('Change my Color!'),
    );
  }
}
