import 'package:demo/statemangement/inheritedwidget_page.dart';
import 'package:demo/statemangement/provider_page.dart';
import 'package:demo/statemangement/setstate_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/page_item.dart';
import 'widget/normal_widget_page.dart';
import 'widget/layout_widget_page.dart';
import 'widget/container_widget_page.dart';
import 'widget/navi_widget_page.dart';
import 'dart/basic_syntax_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/third': (context) => const ThirdPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<PageItem> pages = [
    PageItem(title: 'Dart基础', page: const BasicSyntaxPage()),
    PageItem(title: '基础Widget', page: const NormalWidgetPage()),
    PageItem(title: '布局Widget', page: const LayoutWidgetPage()),
    PageItem(title: '容器Widget', page: const ContainerWidgetPage()),
    PageItem(title: '导航Widget', page: const NaviWidgetPage()),
    PageItem(title: '状态管理-state', page: const SetStatePage()),
    PageItem(
        title: '状态管理-InheritedWidget', page: const InheritedColorWidgetPage()),
    PageItem(
        title: '状态管理-Provider',
        page: ChangeNotifierProvider.value(
            value: ProviderColorToggler(), child: const ProviderPage())),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Pages'),
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index].page),
              );
            },
          );
        },
      ),
    );
  }
}
