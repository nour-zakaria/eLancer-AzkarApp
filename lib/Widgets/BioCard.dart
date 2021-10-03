import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {

final IconData leadingIcon ;
final String title;
final String subTitle;
  final IconData trailingIcon ;
  final double marginBottom;
BioCard({ required this.leadingIcon, required this.title, required this.subTitle, required this.trailingIcon , this.marginBottom =0});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: marginBottom),
        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(15)

        ),
        child: ListTile(

          leading: Icon(leadingIcon),
          title: Text(title ,style: TextStyle(color: Colors.black , fontSize: 16 , fontFamily: 'Noto'),),
          subtitle: Text(subTitle ,style: TextStyle(color: Colors.black , fontSize: 16, fontFamily: 'Noto'),),
          trailing: Icon(trailingIcon),
        )
    );
  }


}
