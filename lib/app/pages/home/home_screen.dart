import 'package:flutter/material.dart';
import 'package:hypernews/app/models/news.dart';
import 'package:hypernews/app/pages/components/appbar.dart';
import 'package:hypernews/app/pages/components/searchbar.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HyperBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [HyperSearchBar(), _listView()],
        ),
      ),
    );
  }
// TODO Fazer a tela de visualização
  Widget _listView() {
    final list = [News().mockedData2(), News().mockedData1()];
    return Expanded(
      child: ListView.builder(
          itemCount: list.length,
          padding: EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
            return _itemList(list[index]);
          }),
    );
  }

  Widget _itemList(News item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
            item.urlToImage,
            width: double.maxFinite,
            fit: BoxFit.cover,
            height: 200.0,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Text(item.author,
                style: TextStyle(color: Colors.grey, fontSize: 14.0)),
            Text(' • ', style: TextStyle(color: Colors.grey, fontSize: 18.0)),
            Text(
                DateFormat('dd/MM/yyyy')
                    .format(DateTime.parse(item.publishedAt)),
                style: TextStyle(color: Colors.grey, fontSize: 14.0))
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          item.title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            color: Colors.blueAccent,
          ),
          child: Text(item.source.name,
              style: TextStyle(color: Colors.white, fontSize: 14.0)),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
