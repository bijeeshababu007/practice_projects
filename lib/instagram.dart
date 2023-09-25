import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
      home: Instagram(),));
}
class Instagram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child:ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback:(Rect bounds)=> LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple,
                  Colors.pink,
                  Colors.orange,
                  Colors.yellow],
              ).createShader(bounds),

          child: FaIcon(FontAwesomeIcons.instagram,size: 100,),

          )),
    );
  }
}