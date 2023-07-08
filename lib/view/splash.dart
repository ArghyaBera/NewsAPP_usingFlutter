import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 200),
                child: Text("Latest News..Coming your way", style: TextStyle(fontSize: 20),),
              ),
            ),
            Spacer(),
            Text("Developed By\nArghya Bera" ,
              textAlign: TextAlign.center ,
              style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
