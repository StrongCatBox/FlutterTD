//import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
//import 'package:animate_do/animate_do.dart';
import 'package:expanded_grid/expanded_grid.dart';
import 'Bleu.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  //int _counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  //  throw UnimplementedError();

    return MaterialApp(
      title: 'Flutter demo',
      home: ExpandedGridSample(),
      // (
      //   appBar: AppBar(
      //     title: Text('Ma Premiere Application Flutter'),
      //   ),
      //   body: Center(
      //
      //       child: FloatingActionButton(onPressed: () {
      //
      //         print('bouton cliqué');
      //         _incrementCounter();
      //
      //       },
      //       child: Text('Click'),
      //       ),

      //),
    //),
    );
  }

//   void _incrementCounter() {
//     _counter++;
//     print(_counter);
//   }
//
//
 }

class ExpandedGridSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('press'),
      ),
      appBar: AppBar(
        title: Text('TD Colors'),
        backgroundColor: Colors.orange,
      ),
      body: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: ExpandedGrid(
            column: 4,
            row: 5,
            children: <ExpandedGridContent>[
              ExpandedGridContent(
                rowIndex: 0,
                columnIndex: 0,
                rowSpan: 2,
                columnSpan: 3,
                child: Container(
                  color: Colors.blue,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bleu()));
                    },
                    icon: Icon(Icons.flip_camera_android, size: 100,),
                  )
                )),

              ExpandedGridContent(
                  rowIndex: 0,
              columnIndex: 3,
                rowSpan: 2,
                columnSpan: 1,
                child: Container(
                  color: Colors.green,
                    child: Icon(Icons.accessibility,
                      size: 100,
                      semanticLabel: 'logo accessibility ',)
                )),

              ExpandedGridContent(
                  rowIndex: 2,
                  columnIndex: 0,
                  rowSpan: 2,
                  columnSpan: 2,
                  child: Container(
                    color: Colors.red,
                      child: Icon(Icons.account_circle,
                        size: 100,
                        semanticLabel: 'logo account_circle ',)
                  )),


              ExpandedGridContent(
                  rowIndex: 2,
                  columnIndex: 2,
                  rowSpan: 1,
                  columnSpan: 2,
                  child: Container(
                    color: Colors.yellow,
                      child: Icon(Icons.add_call,
                        size: 100,
                        semanticLabel: 'logo add_call ',)
                  )),

              ExpandedGridContent(
                  rowIndex: 4,
                  columnIndex: 0,
                  rowSpan: 1,
                  columnSpan: 2,
                  child: Container(
                    color: Colors.blueGrey,
                      child: Icon(Icons.add_business_outlined,
                        size: 100,
                        semanticLabel: 'logo add_bussiness_outlined ',)
                  )),

              ExpandedGridContent(
                  rowIndex: 3,
                  columnIndex: 2,
                  rowSpan: 2,
                  columnSpan: 1,
                  child: Container(
                    color: Colors.purple,
                      child: Icon(Icons.favorite,
                        size: 100,
                        semanticLabel: 'logo favorite ',)
                  )),

              ExpandedGridContent(
                  rowIndex: 3,
                  columnIndex: 3,
                  rowSpan: 2,
                  columnSpan: 1,
                  child: Container(
                    color: Colors.orange,
                      child: Icon(Icons.add_a_photo_sharp,
                        size: 100,
                        semanticLabel: 'logo add_a_photo_sharp ',)
                  )),

            ],
          ),
        ),
      ),
    );

  }
}



// class MonImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       decoration: BoxDecoration(color: Colors.blue),
//       child: Center(
//         child: Text('Carré'),
//       ),
//     );
//     throw UnimplementedError();
//   }
//
// }

