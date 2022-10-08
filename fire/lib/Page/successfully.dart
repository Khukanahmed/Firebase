import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Successfully Firebase',
              style: TextStyle(fontSize: 25,color: Colors.green),
              
            ),
            Text(
              'Best of Luck',
              style: TextStyle(fontSize: 25,color: Colors.red),
              
            )
          ],
        ),
      ),
    );
  }
}
