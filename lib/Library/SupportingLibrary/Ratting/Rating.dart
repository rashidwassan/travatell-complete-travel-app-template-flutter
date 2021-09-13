import 'package:flutter/material.dart';

class ratingbar extends StatelessWidget {
  final int starCount;
  final double starRating;
  final Color color;
  final double size;

  ratingbar({
    this.starCount=5,
    this.starRating=0.0,
    this.color=Colors.yellow,
    this.size
  });

  Widget buildStar(BuildContext context,int index){
    IconData iconData = Icons.star;
    Color warna = color;

    if(index>=starRating){
      iconData =Icons.star;
      warna = Colors.black12.withOpacity(0.1);
    } else if(index> starRating - 1 && index < starRating){
      iconData = Icons.star_half;
    }
    return Icon(iconData,size: 14.0,color: warna);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(starCount, (i)=>buildStar(context, i)));
  }
}
