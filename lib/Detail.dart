import 'package:erp_project/Category.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.findAncestorWidgetOfExactType<Category>());
    return Scaffold(
      appBar: AppBar(
        title: Text('groupName'),
      ),
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width - 30,
        height: MediaQuery.of(context).size.height - 30,
        child: Text('f')
      ),
    );
  }
}
