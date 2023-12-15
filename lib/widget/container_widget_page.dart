import 'package:flutter/material.dart';

class ContainerWidgetPage extends StatelessWidget {
  const ContainerWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widget Page'),
      ),
      body: PageView(
        children: const <Widget>[
          CardPage(),
          ListViewPage(),
          GridViewPage(),
        ],
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text('基本的 Card 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Card(
            elevation: 4.0,
            child: ListTile(
              leading: Icon(Icons.account_circle, size: 50),
              title: Text('用户名'),
              subtitle: Text('用户描述信息'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          const Divider(),
          const Text('带图片的 Card 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                Image.network('https://placekitten.com/200/200'),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('这是一张可爱的小猫图片'),
                ),
              ],
            ),
          ),
          const Divider(),
          const Text('多个卡片的示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(), // 禁止滚动
            shrinkWrap: true, // 根据子组件的总长度来设置 ListView 的长度
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4.0,
                child: ListTile(
                  leading: const Icon(Icons.favorite, size: 50),
                  title: Text('卡片 $index'),
                  subtitle: const Text('卡片描述信息'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // 基本 ListView
          const Text('基本 ListView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: ListView(
              children: const <Widget>[
                ListTile(title: Text('List item 1')),
                ListTile(title: Text('List item 2')),
                ListTile(title: Text('List item 3')),
                // ...更多 items
              ],
            ),
          ),
          const Divider(),

          // 带分隔符的 ListView
          const Text('带分隔符的 ListView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  ListTile(title: Text('Item $index')),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
          const Divider(),

          // 水平滚动 ListView
          const Text('水平滚动 ListView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Item $index',
                          style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // 基本 GridView
          const Text('基本 GridView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return Container(
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                        child: Text('Item $index',
                            style: const TextStyle(color: Colors.white))),
                  ),
                );
              }),
            ),
          ),
          const Divider(),

          // 动态 GridView.builder
          const Text('动态 GridView.builder',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: Colors.red,
                    child: Center(
                        child: Text('Item $index',
                            style: const TextStyle(color: Colors.white))),
                  ),
                );
              },
            ),
          ),
          const Divider(),

          // 不同列数的 GridView
          const Text('不同列数的 GridView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              children: List.generate(8, (index) {
                return Container(
                  child: Card(
                    color: Colors.green,
                    child: Center(
                        child: Text('Item $index',
                            style: const TextStyle(color: Colors.white))),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
