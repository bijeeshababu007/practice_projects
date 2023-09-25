import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewCustomUi(),));
}
class GridViewCustomUi extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Custom"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.custom(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              childrenDelegate: SliverChildListDelegate(
                List.generate(4, (index) => Container(
                  color: Colors.white,
                  child:Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit:BoxFit.fill,
                                image: NetworkImage("https://media.istockphoto.com/id/1068843992/photo/luxury-watch-isolated-on-white-background-with-clipping-path-gold-watch-women-watch-female.webp?b=1&s=170667a&w=0&k=20&c=dmdny56LLRNpW_l4oQ1LyWtDBqBB4APRHlKaqOz7uZY=")),
                          ),
                        ),
                        const Text("item1",
                          style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.normal),
                        ),
                        const Text("\$ 250",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                ),
              ),
            )
        ) );
  }

}