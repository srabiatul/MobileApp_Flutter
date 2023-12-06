import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        title: Text('S62651'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ImageWidget(),
    ),
  ));
}

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  AssetImage currentImage = AssetImage('images/cat.jpg');

  void changeImage(AssetImage newImage) {
    setState(() {
      currentImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: currentImage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  changeImage(AssetImage('images/kitten.jpg'));
                },
                child: Text('Kitten'),
              ),
              SizedBox(width: 25), // Add some spacing between buttons
              ElevatedButton(
                onPressed: () {
                  changeImage(AssetImage('images/cat.jpg'));
                },
                child: Text('Cat'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}//Rabiatul binti Sulaiman S62651 
