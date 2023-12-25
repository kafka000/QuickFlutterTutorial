import 'package:flutter/material.dart';

class NaviWidgetPage extends StatelessWidget {
  const NaviWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navi Widget Page'),
      ),
      body: PageView(
        children: const <Widget>[
          NavigatorPage(),
          BottomNavigationBarDrawerPage(),
        ],
      ),
    );
  }
}

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator 示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 普通路由传值
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(
                            title: '第一页传给你的',
                          )),
                );
                print('第二页传回来的值为$result');
              },
              child: const Text('跳转到第二个页面'),
            ),
            // 命名路由传值
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.pushNamed(
                  context,
                  '/third',
                  arguments: {'title': "第一页传给你的"},
                );
                print('第三页传回来的值为$result');
              },
              child: const Text('通过路由名跳转'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('第二个页面'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '这是第二个页面返回的数据');
              },
              child: const Text('返回'),
            ),
            Text(title ?? '没有传值')
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)!.settings.arguments as Map;
    var title = args['title'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('第三个页面'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '这是第三个页面返回的数据');
              },
              child: const Text('返回'),
            ),
            Text(title ?? '没有传值')
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarDrawerPage extends StatefulWidget {
  const BottomNavigationBarDrawerPage({super.key});

  @override
  _BottomNavigationBarDrawerPageState createState() =>
      _BottomNavigationBarDrawerPageState();
}

class _BottomNavigationBarDrawerPageState
    extends State<BottomNavigationBarDrawerPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar & Drawer'),
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text('抽屉头部'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: const Text('项 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('项 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '商务'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '学校'),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('首页'));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('商务页面'));
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('学校页面'));
  }
}
