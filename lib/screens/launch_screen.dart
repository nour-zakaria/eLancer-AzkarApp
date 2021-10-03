import 'package:flutter/material.dart';
class LanuchScreen extends StatefulWidget {
  const LanuchScreen({Key? key}) : super(key: key);

  @override
  _LanuchScreenState createState() => _LanuchScreenState();
}

class _LanuchScreenState extends State<LanuchScreen> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/azkar_screen');
    });



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
              colors: [
              Colors.teal.shade700,
              Colors.teal.shade200
              ],
          )
        ),
        child: Text('مسبحة الأذكار',style: TextStyle(fontFamily: 'Noto', fontSize: 16,fontWeight: FontWeight.bold),) ,
      ),
    );
  }
}
