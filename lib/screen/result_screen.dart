import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final bool ismale;
  final double result;
  final int age;
  const ResultScreen({Key? key,required this.age,required this.ismale,required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.black,
        title: Text("B M I",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 40),),
    centerTitle: true,
    ),
    backgroundColor: Colors.black,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gendar : ${ismale? "male":"female"}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.deepOrangeAccent,)),
          Text("Age : ${age}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.deepOrangeAccent,)),
          Text("BMI : ${result.round()}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.deepOrangeAccent,)),
        ],
      ),
    ),

    );
  }
}
