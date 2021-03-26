import 'package:flutter/material.dart';

Widget customListTile({@required String name, @required String date}) {
  return Container(
    margin: const EdgeInsets.only(top: 5, bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {},
      dense: true,
      title: Text(
        name,
        style: TextStyle(
          color: Color(0xFF00003d),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        date,
        style: TextStyle(
          color: Color(0xFF9ca8c5),
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Color(0xFFbac3dd),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
