import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'result_screen.dart';
class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double hight=120;
  int age=18;
  double wight=50.0;
  bool male=false;
  bool female=false;
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
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                       children: [
                         Expanded(child: GestureDetector(
                           onTap: (){
                             setState(() {
                               print("male");
                               male=true;
                               female=false;
                             });
                           },
                           child: Container(
                               decoration: BoxDecoration(
                               color: male?female?Color.fromRGBO(29, 29, 37, 0.9882352941176471):Colors.white:Color.fromRGBO(29, 29, 37, 0.9882352941176471),
                                 borderRadius: BorderRadius.circular(25),
                               ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 Image(image: AssetImage('images/img_2.png',),color: Colors.deepOrangeAccent,height: 90,width: 90,),
                                 Text("Male",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 40),)
                               ],
                             ),
                           ),
                         )),
                         SizedBox(width: 20,),
                         Expanded(child: GestureDetector(
                           onTap: (){setState(() {
                             print("femail");
                             male=false;
                             female=true;
                           });},
                           child: Container(
                             decoration: BoxDecoration(
                               color: female?male?Color.fromRGBO(29, 29, 37, 0.9882352941176471):Colors.white:Color.fromRGBO(29, 29, 37, 0.9882352941176471),
                               borderRadius: BorderRadius.circular(25),
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 Image(image: AssetImage('images/img_3.png',),color: Colors.deepOrangeAccent,height: 90,width: 90,),
                                 Text("Female",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 40),)
                               ],
                             ),
                           ),
                         )),
                       ],
                ),
              )
          ),
          Expanded(child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 10,end: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 29, 37, 0.9882352941176471),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hight",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${hight.round()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("cm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),)
                    ],
                  ),
                  Slider(value: hight,
                    mouseCursor: MouseCursor.defer,
                    onChanged: (value){setState(() {
                    hight=value ;
                  });},
                    activeColor: Colors.deepOrangeAccent,
                    max: 220,
                      min: 80,
                  )
                ],
              ),
            ),
          )),
          Expanded(child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(29, 29, 37, 0.9882352941176471),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.deepOrangeAccent),),
                        Text("$age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){setState(() {
                                age++;
                              });},
                              heroTag: "age++",
                              child: Icon(Icons.add,color: Colors.white,)
                              ,backgroundColor: Colors.deepOrangeAccent, ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });

                              },
                              heroTag: "age--",
                              child: Icon(Icons.remove,color: Colors.white,)
                              ,backgroundColor: Colors.deepOrangeAccent, ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )),
                SizedBox(width: 10.0,),
                Expanded(child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(29, 29, 37, 0.9882352941176471),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.deepOrangeAccent),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("$wight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                            Text("Kg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepOrangeAccent),),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){setState(() {
                                wight++;
                              });},
                              child: Icon(Icons.add,color: Colors.white,)
                              ,backgroundColor: Colors.deepOrangeAccent, ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  wight--;
                                });
                              },
                              child: Icon(Icons.remove,color: Colors.white,)
                              ,backgroundColor: Colors.deepOrangeAccent, ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            color: Colors.deepOrangeAccent,
            child: MaterialButton(
              onPressed: () {
                var result = wight/ pow(hight.round()/100,2);
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultScreen(result: result,ismale: male,age: age,)));
              },
              height: 50.0,
              child: Text("Calculate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
