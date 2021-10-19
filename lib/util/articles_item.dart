import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_course/util/theme.dart';

class ArticlesItem extends StatefulWidget {
  final String articlesName;
  final String articlesImage;
  final String articlesCourse;

  const ArticlesItem(
      {required this.articlesName,
      required this.articlesImage,
      required this.articlesCourse});

  @override
  _ArticlesItemState createState() => _ArticlesItemState();
}

class _ArticlesItemState extends State<ArticlesItem> {
  Color _favIconColor = Colors.grey;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(20.0)),
            ),
            child: Image.asset(widget.articlesImage, width: 86, height: 80),
          ),
          SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.articlesName,
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 12.0)),
              SizedBox(height: 5.0),
              Text(widget.articlesCourse,
                  style: greyTextStyle.copyWith(fontSize: 10.0))
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.redAccent : Colors.grey,
              size: 16.0,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
    );
  }
}
