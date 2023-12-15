import 'package:flutter/material.dart';

class LayoutWidgetPage extends StatelessWidget {
  const LayoutWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widget Page'),
      ),
      body: PageView(
        children: const <Widget>[
          ContainerPage(),
          RowColumnPage(),
          StackPage(),
          PaddingPage(),
          AlignCenterPage(),
        ],
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: const Text('简单容器'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.red,
            child: const Text('带内边距的容器'),
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(20.0),
            color: Colors.green,
            child: const Text('带外边距的容器'),
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.yellow,
            child: const Text('特定宽高的容器'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text('带装饰的容器'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Text('带阴影的容器'),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(20.0),
            transform: Matrix4.rotationZ(0.1),
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: const Text('变换效果的容器'),
          ),
        ],
      ),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text('Row 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.home, color: Colors.blue),
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.person, color: Colors.green),
            ],
          ),
          Divider(),
          Text('Column 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('第一行文本'),
              Text('第二行文本'),
              Text('第三行文本'),
            ],
          ),
          Divider(),
          Text('嵌套 Row 和 Column',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.cloud, color: Colors.blue),
                  Text('Cloud'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.beach_access, color: Colors.orange),
                  Text('Beach'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.brightness_5, color: Colors.yellow),
                  Text('Sun'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const Text('简单的 Stack 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 80,
                backgroundImage:
                    NetworkImage('https://placekitten.com/200/200'),
              ),
              Container(
                color: Colors.black45,
                child: const Text(
                  '可爱的小猫',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const Text('使用 Positioned 的 Stack 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Stack(
            children: <Widget>[
              Image.network('https://placekitten.com/300/200'),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  color: Colors.black45,
                  child: const Text(
                    '右下角文本',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const Text('更复杂的 Stack 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              const Text(
                '层叠效果',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text('Padding 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.blue,
              child:
                  const Text('所有方向的内边距', style: TextStyle(color: Colors.white)),
            ),
          ),
          const Divider(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Container(
              color: Colors.red,
              child: const Text('水平和垂直方向的内边距',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
            child: Container(
              color: Colors.green,
              child:
                  const Text('特定方向的内边距', style: TextStyle(color: Colors.white)),
            ),
          ),
          const Divider(),
          const Text('嵌套 Padding 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.purple,
                child:
                    const Text('双重内边距', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlignCenterPage extends StatelessWidget {
  const AlignCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text('Align 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(
            height: 100,
            color: Colors.blue[100],
            child: const Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(size: 50),
            ),
          ),
          const Divider(),
          const Text('Center 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(
            height: 100,
            color: Colors.red[100],
            child: const Center(
              child: FlutterLogo(size: 50),
            ),
          ),
          const Divider(),
          const Text('多重 Align 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(
            height: 200,
            color: Colors.green[100],
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(size: 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
