import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter=0;
   String _content = 'سبحان لله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.teal),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('مسبحة الاذكار',
            style: TextStyle(
                fontFamily: 'Noto',
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
        actions: [
         PopupMenuButton<String>(
           onSelected: (value){
             if(_content != value){}
             setState(() {
                _content=value;
               _counter =0;
             });
           },
             itemBuilder: (context){
           return[

             PopupMenuItem(
               child: Text('الحمد لله',style: TextStyle(fontFamily: 'Noto' ,fontWeight: FontWeight.w500),) ,
               value: 'الحمد لله',),
             PopupMenuItem(
               child: Text('استغفر لله',style: TextStyle(fontFamily: 'Noto' ,fontWeight: FontWeight.w500)) ,
               value: 'استغفر لله',),
             PopupMenuItem(
               child: Text('الله  اكبر',style: TextStyle(fontFamily: 'Noto' ,fontWeight: FontWeight.w500)) ,
               value: 'الله  اكبر',),


           ];
         }) ,
          IconButton(onPressed: ()=>{
            Navigator.pushNamed(context, '/bio_screen')
          }, icon: Icon(Icons.info_outline))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/im.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('images/im2.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(top: 20, bottom: 25),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 0),
                        blurRadius: 6)
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Noto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.teal),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: TextStyle(
                              fontFamily: 'Noto',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal.shade800,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(10)))),
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      child: Text('تسبيح',
                          style: TextStyle(
                              fontFamily: 'Noto',
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    )),
                Expanded(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(10)))),
                  onPressed: () {
                    setState(() {
                      _counter=0;
                    });
                  },
                  child: Text('اعادة',
                      style: TextStyle(
                          fontFamily: 'Noto',
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
