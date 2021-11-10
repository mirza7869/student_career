import 'package:flutter/material.dart';
import 'screens.dart';
import 'package:student_career/widgets/widgets.dart';
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
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
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/12.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            const Text('CAREELO'),
            const SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlockButtons(
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentLoginScreen()));
                  },
                  child: const Text('STUDENT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  buttonSize: const Size(150,50),
                  buttonRadius: 12,
                ),
                BlockButtons(
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardScreen()));
                  },
                  child: const Text('STAFF',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  buttonSize: const Size(150,50),
                  buttonRadius: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
