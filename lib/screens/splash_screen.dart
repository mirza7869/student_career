import 'package:flutter/material.dart';
import 'package:student_career/widgets/widgets.dart';
import 'package:student_career/screens/on_board_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

                alignment: Alignment.center,
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/12.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            const SizedBox(height: 15.0,),
            BlockButtons(
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardScreen()));
                },
                child: const Text('CONTINUE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              buttonSize: const Size(150,50),
              buttonRadius: 12,
            ),
          ],
        ),
        ),
    );
  }
}
