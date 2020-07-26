import 'package:flutter/material.dart';

class CategoryImageWidget extends StatelessWidget {
  String image, categoryName;

  CategoryImageWidget({this.image, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(this.image),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black26),
                  child: Text(
                    this.categoryName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
