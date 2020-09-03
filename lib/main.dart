import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.red,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Sliver App Bar'),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              addDetails('One', 'This is One'),
              addDetails('Two', 'This is Two'),
              addDetails('Three', 'This is Three'),
              addDetails('Four', 'This is Four'),
              addDetails('Five', 'This is Five'),
              addDetails('Six', 'This is Six'),
              addDetails('Seven', 'This is Seven'),
              addDetails('Eight', 'This is Eight'),
              addDetails('Nine', 'This is Nine'),
              addDetails('Ten', 'This is Ten'),
              addDetails('Eleven', 'This is Eleven'),
              addDetails('Twelve', 'This is Twelve'),
              addDetails('Thirteen', 'This is Thirteen'),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
  String name,
  String desc,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(desc),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
