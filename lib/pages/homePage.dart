
import 'package:flutter/material.dart';
import 'package:mtech/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days=30;
 final String name='Mona';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Hello sweet heart $name ,welcome to $days flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
