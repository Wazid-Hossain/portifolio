import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      // to set the image under appbar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Image.asset('assets/wajid.png',
                   fit: BoxFit.contain,),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.67),
                  child: Center(
                    child: Column(
                      children: [
                        const Text('Hello I am', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height: 5,),
                        const Text('Wazid Hossain', style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5,),
                        const Text('Flutter Devloper', style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                  
                        ),
                        ),
                        SizedBox(height: 10,),
                        // to incresed the button size
                        SizedBox( width: 100,
                        // to create a button
                          child: TextButton(onPressed: (){},
                           child: Text('Hire Me'),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white, foregroundColor: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10,),
                        // to create social media icon use awsome flutter icon depedency
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(
                              FontAwesomeIcons.instagram, color: Colors.white,
                            ),
                            ),
                             IconButton(onPressed: (){}, icon: const Icon(
                              FontAwesomeIcons.facebook, color: Colors.white,
                            ),
                            ),
                             IconButton(onPressed: (){}, icon: const Icon(
                              FontAwesomeIcons.github, color: Colors.white,
                            ),
                            ),
                             IconButton(onPressed: (){}, icon: const Icon(
                              FontAwesomeIcons.linkedin, color: Colors.white,
                            ),
                            ),
                             IconButton(onPressed: (){}, icon: const Icon(
                              FontAwesomeIcons.twitter, color: Colors.white,
                            ),
                            ),
                            
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}