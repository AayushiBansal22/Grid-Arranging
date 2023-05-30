import 'package:flutter/material.dart';
import 'package:grid_arranging/screens/tile.dart';

class Grid extends StatelessWidget {
  var number=[];
  var size;
  Function tap;
  Grid(this.number, this.size, this.tap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = size.height;

    return Container(
      height: height*0.80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: number.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index){
            return number[index] != 0 ? Tile("${number[index]}",(){
              tap(index);
            }) : const SizedBox.shrink();
            },
        ),
      ),
    );
  }
}