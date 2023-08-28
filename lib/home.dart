import 'package:flutter/material.dart';
import 'package:portifolio/about.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //create a funtion to call 3 cards
  mycard(icon, tech) {
    return Container(
      height: 115,
      width: 105,
      child: Card(
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
    // end function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // to set the image under appbar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          tooltip: 'menu',
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
          PopupMenuItem(child: TextButton(
            child: Text('Projcts', style: TextStyle(
              color: Colors.black,
            ),),
            onPressed: (){
              Navigator.pushNamed(context, 'projects');
            },
          ),
          value: 1,
          ),
            PopupMenuItem(child: TextButton(
            child: Text('About Me', style: TextStyle(color: Colors.black),),
            onPressed: (){
            Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return MyAbout();
                            },
                          ),
                        );
            },
          ),
          value: 2,
          ),
        ],
        ),
        
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:
          // to shape the down side
          SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        // This is start the top side
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/wajid2.JPG',
                 fit: BoxFit.contain,),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),
                child: Center(
                  child: Column(
                    children: [
                      Text('Wazid Hossain', style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 5,),
                      Text('Flutter Devloper', style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                
                      ),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            // margin used to show texts in current position
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              // to add down sides design
              child: Column(
                // to start the text 'specalized in' in first
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // to add projects
                  Row(
                    // to space the text
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // to and project text
                        children: [
                          Text(
                            '08',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          // to down the text
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(' Projects'),
                          )
                        ],
                      ),
                      // to and clients text
                      Row(
                        children: [
                          Text(
                            '00',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          // to down the text
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(' Clients'),
                          )
                        ],
                      ),
                      // to and Messages text
                      Row(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          // to down the text
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(' Messages'),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // specelized in text
                  const Text(
                    'Specelized in',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // add 3 cards to calling funtion
                  Column(
                    children: [
                      Row(
                        // first row
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mycard(Icons.android, 'Android'),
                          mycard(Icons.html, 'HTML'),
                          mycard(Icons.css, 'CSS'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //scound row
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mycard(Icons.gite, 'GitHub'),
                          mycard(Icons.javascript, 'Java Script'),
                          mycard(Icons.wordpress, 'WordPress'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //third row
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mycard(Icons.apple, 'ISO'),
                          mycard(Icons.web, 'Web'),
                          mycard(Icons.wordpress, 'WordPress'),
                        ],
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
