import 'package:flutter/material.dart';
import 'package:student_career/widgets/widgets.dart';
import 'screens.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({Key? key}) : super(key: key);

  @override
  _StudentLoginScreenState createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/12.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 15.0,),
            const Text('CAREELO'),
            const SizedBox(height: 15.0,),
            const Text('Student Login',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            const SizedBox(height: 15.0,),
            Card(
              margin:const  EdgeInsets.all(20),
              elevation: 8,
              child: Column(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InputField(
                      hintText: 'Email',
                      ),
                    ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InputField(
                      hintText: 'Password',
                      isPassword: true,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlockButtons(
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentLoginScreen()));
                  },
                  child: const Text('Log in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  buttonSize: const Size(500,50),
                  buttonRadius: 12,
                ),
                BlockButtons(
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentRegister()));
                  },
                  child: const Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  buttonSize: const Size(500,50),
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
