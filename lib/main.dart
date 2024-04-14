import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:erp_project/Search.dart';
import 'package:erp_project/Category.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var tab = 0;

class _MyAppState extends State<MyApp> {
  isTab() {
    if (tab != 2) {
      return Search();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text("MON"),
        ),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                //장바구니 즉 tab=2 일떈 search를 보여주지 않겠다
                Container(child: isTab()),
                [Text('홈입니다'), Category(), Text('장바구닙니다')][tab]
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tab,
        items: [
          BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: '카테고리',
              icon: Icon(Icons.menu),
              activeIcon: Icon(Icons.menu_open_rounded)),
          BottomNavigationBarItem(
              label: '장바구니',
              icon: Icon(Icons.shopping_basket_outlined),
              activeIcon: Icon(Icons.shopping_basket))
        ],
        onTap: (i) {
          setState(() {
            tab = i;
          });
        },
      ),
    );
  }
}
