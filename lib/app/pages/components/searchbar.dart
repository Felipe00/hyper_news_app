import 'package:flutter/material.dart';

class HyperSearchBar extends StatelessWidget {
  const HyperSearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: _searchBar(),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            top: 8.0,
            right: 16.0,
            bottom: 16.0,
          ),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              helperText: 'Pesquise "Notícias quentinhas"',
              //enabledBorder: UnderlineInputBorder(
              //borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
              //),
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              focusColor: Colors.grey.shade300,
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            color: Colors.grey.shade300),
      ),
    );
  }
}
