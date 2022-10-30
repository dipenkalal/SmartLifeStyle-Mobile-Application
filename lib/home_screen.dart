import 'package:flutter/material.dart';
import 'package:sls/questionnaire_screen.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return  Scaffold(
        key: _scaffoldKey,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        backgroundColor: Color(0xFFffffff),
        body: Center(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),fit: BoxFit.cover,),

            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
              key: formKey, //key for form
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:height*0.20),
                  Text("Welcome Home @Test User", style: TextStyle(fontSize: 50, color:Color(0xFF363f93)),),
                  const SizedBox(
                    height: 35,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  QuestionnaireScreen()),
                              );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                        padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 14, color: Colors.white))),
                    child: const Text(
                      "Questionnaire",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                  // TextButton(
                  //   style: TextButton.styleFrom(
                  //     foregroundColor: Colors.black,
                  //     padding: const EdgeInsets.all(16.0),
                  //     textStyle: const TextStyle(fontSize: 20),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) =>  QuestionnaireScreen()),
                  //     );
                  //   },
                  //   child: const Text('Questionnaire'),
                  // ),
                ],
              ),
            ),
          ) ,
        )
    );
  }
}



