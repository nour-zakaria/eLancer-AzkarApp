import 'package:elancer_azkara_pp/Widgets/BioCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BioScreen());
}
class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('My Bio' , style: TextStyle(
            color: Colors.black ,
            fontSize: 25
        ),),

        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(

            gradient: LinearGradient(
                begin: AlignmentDirectional.bottomStart,
                colors: [
                  Colors.purple.shade100,
                  Colors.purple.shade500
                ]
            )
        ),
        child: Padding(

          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(radius: 40,
                child: Image.asset("images/flowers.png" ),
                backgroundColor: Colors.transparent,


              ),
              SizedBox(height: 15),
              Text('Nour Zakaria' ,style: TextStyle(color: Colors.black , fontSize: 16 ,fontFamily: 'Noto'  ,fontWeight: FontWeight.bold),),
              Text('Elancer Flutter Trainnig' ,style: TextStyle(color: Colors.black , fontSize: 16,fontFamily: 'Noto',fontWeight: FontWeight.bold), ),
              Divider(color: Colors.white,thickness: 2,indent: 30, endIndent: 30,height: 50,),
              BioCard(leadingIcon: Icons.email,title: 'Email',subTitle: 'nour.zakaria97@gmail.com',trailingIcon: Icons.send ,marginBottom: 10,),
              BioCard(leadingIcon: Icons.phone_android,title: 'Mobile',subTitle: '0592618414',trailingIcon: Icons.call, marginBottom: 10,),
              BioCard(leadingIcon: Icons.recommend,title: 'Course',subTitle: 'elancer_Flutter',trailingIcon: Icons.bookmark_outlined, marginBottom: 10,),
              Spacer(),
              Text('Elancer-Flutter'),
              SizedBox(height: 5)
            ],

          ),
        ),
      ),

    );
  }
}
