import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:UiGridviewUi(),));
}
class UiGridviewUi extends StatelessWidget{

  var color = [Colors.red,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.brown,
    Colors.orange,
    Colors.black,
    Colors.purple,
    Colors.pink,
    Colors.lightBlue,
    Colors.grey];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20),
            itemBuilder:(context,index){
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:color[index]
                  // image  : DecorationImage(
                  // image:AssetImage(images[index]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit),
                    SizedBox(width: 15),
                    Text("Hello")
                  ],
                ),
              );
            },
            itemCount: 12,
          ),
        )
    );
  }
}