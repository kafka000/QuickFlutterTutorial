import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('ListView Examples'),
            ),
            body: ListView(
                children: [
                    ListTile(
                        leading: Icon(Icons.person),
                        title: Text('John Doe'),
                        subtitle: Text('Software Engineer'),
                    ),
                    ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Jane Smith'),
                        subtitle: Text('Product Manager'),
                    ),
                    ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Mike Johnson'),
                        subtitle: Text('UI/UX Designer'),
                    ),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Sarah Williams'),
                        subtitle: Text('Data Analyst'),
                    ),
                    ListTile(
                        leading: Icon(Icons.person),
                        title: Text('David Brown'),
                        subtitle: Text('Quality Assurance'),
                    ),
                ],
            ),
        );
    }
}
