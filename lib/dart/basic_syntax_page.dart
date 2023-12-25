import 'package:demo/common/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';

class BasicSyntaxPage extends StatelessWidget {
  const BasicSyntaxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Syntax Page'),
      ),
      body: PageView.builder(
        itemCount: syntax.dartCodeList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: HighlightView(
                  syntax.dartCodeList[index],
                  language: 'dart',
                  theme: atomOneLightTheme,
                  textStyle: const TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
