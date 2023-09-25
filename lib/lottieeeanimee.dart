import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotAnim(),));
}

class LotAnim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: Column(
        children:[
          Lottie.asset("assets/animation/animation2.json")
        ],
      ),
    );
  }

}