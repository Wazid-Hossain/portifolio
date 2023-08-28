import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {

myPro(language, title, des, star ){
  return             Container(
                height: 220,
                width: MediaQuery.of(context).size.height*0.9,
                
                child: Card(
                  color: Color(0xff262628),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      children: [
                        Text(language, style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                        SizedBox(height: 10,),
                         Text(title, style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10,),
                         Text(des, style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.white70, size: 18,),
                            SizedBox(width: 5,),
                            Text(star, style: TextStyle(
                              color: Colors.white70,
                            ),
                            ),
                            Expanded(child: Container()),
                            IconButton(onPressed: (){}, icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ))
                          ],
                        )
                      ],

                    ),
                  ),
                ),
              );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Projects',
        style: TextStyle(
          backgroundColor: Color(0xff252525),
          fontSize: 20,
          
        ),
        ),
        backgroundColor: Color(0xff252525),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('Flutter', 'Proyfolio', 'This is my flutter based protfolio', '10'),
              myPro('Flutter', 'Welcome Page', 'This is a simple signup and Login Pages', '10'),
              myPro('Flutter', 'Modern Login Page', 'This is a Modern Responsive Login Page', '8')
  
            ],
          ),
        ),
      )
        );
  }
}