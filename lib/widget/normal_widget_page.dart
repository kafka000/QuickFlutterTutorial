import 'package:flutter/material.dart';

class NormalWidgetPage extends StatelessWidget {
  const NormalWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal Widget Page'),
      ),
      body: PageView(
        children: const <Widget>[
          TextPage(),
          ImagePage(),
          IconPage(),
          ButtonPage(),
          SwitchCheckboxRadioPage(),
          SliderDatePickerPage(),
        ],
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '普通文本',
            style: TextStyle(fontSize: 20),
          ),
          const Divider(),
          const Text(
            '加粗文本',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            '斜体文本',
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          const Divider(),
          const Text(
            '下划线文本',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
          const Divider(),
          const Text(
            '带阴影的文本',
            style: TextStyle(
              fontSize: 20,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
          const Divider(),
          const Text(
            '字间距和行间距文本',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 2.0,
              height: 1.5,
            ),
          ),
          const Divider(),
          const Text(
            '不同颜色和背景色文本',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              backgroundColor: Colors.yellow,
            ),
          ),
          const Divider(),
          const Text(
            '多样式文本: 加粗, 斜体, 颜色',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
          const Divider(),
          RichText(
            text: const TextSpan(
              text: 'RichText: ',
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: '粗体', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' 正常 '),
                TextSpan(
                    text: '斜体', style: TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          const Divider(),
          Text(
            '长文本，自动换行。' * 4,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '网络图片',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://placekitten.com/100/300',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const Divider(),
          const Text(
            '本地资源图片',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'lib/images/facebook.png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const Divider(),
          const Text(
            '图标图片',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Image(
            image: AssetImage('lib/images/wine.png'),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const Divider(),
          const Text(
            '圆形剪切图片',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ClipOval(
            child: Image.network(
              'https://placekitten.com/200/200',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const Divider(),
          const Text(
            '带有占位符的网络图片',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          FadeInImage.assetNetwork(
            placeholder: 'lib/images/dinner.png',
            image: 'https://placekitten.com/400/400',
          ),
        ],
      ),
    );
  }
}

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text('简单的 Icon 示例',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Icon(
            Icons.home,
            color: Colors.blue,
            size: 50.0,
          ),
          const Divider(),
          const Text('不同颜色和大小的 Icon',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Icon>[
              Icon(Icons.favorite, color: Colors.pink, size: 24.0),
              Icon(Icons.alarm, color: Colors.red, size: 30.0),
              Icon(Icons.airport_shuttle, color: Colors.blue, size: 36.0),
              Icon(Icons.settings, color: Colors.black, size: 42.0),
            ],
          ),
          const Divider(),
          const Text('使用 IconButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Center(
            child: IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: '增加音量',
              color: Colors.green,
              iconSize: 50.0,
              onPressed: () {
                // 添加动作
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton'),
          ),
          const SizedBox(height: 8),
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.send),
            label: const Text('ElevatedButton with Icon'),
          ),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.info),
            label: const Text('TextButton with Icon'),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('OutlinedButton with Icon'),
          ),
        ],
      ),
    );
  }
}

class SwitchCheckboxRadioPage extends StatefulWidget {
  const SwitchCheckboxRadioPage({super.key});

  @override
  _SwitchCheckboxRadioPageState createState() =>
      _SwitchCheckboxRadioPageState();
}

class _SwitchCheckboxRadioPageState extends State<SwitchCheckboxRadioPage> {
  bool switchValue = false;
  bool checkboxValue = false;
  int radioGroupValue = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SwitchListTile(
            title: const Text("Switch"),
            value: switchValue,
            onChanged: (newValue) {
              setState(() {
                switchValue = newValue;
              });
            },
          ),
          CheckboxListTile(
            title: const Text("Checkbox"),
            value: checkboxValue,
            onChanged: (newValue) {
              setState(() {
                checkboxValue = newValue!;
              });
            },
          ),
          ListTile(
            title: const Text("Radio 1"),
            leading: Radio(
              value: 1,
              groupValue: radioGroupValue,
              onChanged: (newValue) {
                setState(() {
                  radioGroupValue = newValue as int;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Radio 2"),
            leading: Radio(
              value: 2,
              groupValue: radioGroupValue,
              onChanged: (newValue) {
                setState(() {
                  radioGroupValue = newValue as int;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SliderDatePickerPage extends StatefulWidget {
  const SliderDatePickerPage({super.key});

  @override
  _SliderDatePickerPageState createState() => _SliderDatePickerPageState();
}

class _SliderDatePickerPageState extends State<SliderDatePickerPage> {
  double sliderValue = 0.0;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          value: sliderValue,
          min: 0.0,
          max: 100.0,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          },
        ),
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(2025),
            );
            if (picked != null && picked != selectedDate) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: const Text('Select Date'),
        ),
      ],
    );
  }
}
