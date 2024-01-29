import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'MYAPP',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 450,
          color: Colors.grey[200],
          child: Column( // Используем Column для вертикального расположения
            mainAxisAlignment: MainAxisAlignment.center, // Выравниваем по центру по вертикали
            children: <Widget>[
             SizedBox(height: 20),
              CustomButton(
                text: "Click",
                onPressed: () {
                  print('Кнопка 1 нажата');
                },
               
                width: 130,
                height: 100,
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Custom Button",
                onPressed: () {
                  print('Кнопка 2 нажата');
                },
                width: 130,
                height: 50,
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Another Button",
                onPressed: () {
                  print('Еще одна кнопка нажата');
                },
                width: 130,
                height: 50,
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "One More Button",
                onPressed: () {
                  print('Еще одна кнопка нажата');
                },
                width: 130,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;

  CustomButton({
    required this.text, 
    required this.onPressed,
    this.width = 120,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Center( // Обернуть текст в Center
          child: Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
