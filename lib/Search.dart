import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity,
          height: 55,
          child: Column(
            children: [
              SizedBox(height: 10,),
              SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    leading: Icon(Icons.search),
                    hintText: "품목을 입력해주세요",
                    constraints: BoxConstraints(
                        minHeight: 32.5
                    ),
                  );
                }
                ,
                suggestionsBuilder: (BuildContext context,
                    SearchController controller) {
                  return [ListTile(
                    title: Text('f'),
                  )];
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
