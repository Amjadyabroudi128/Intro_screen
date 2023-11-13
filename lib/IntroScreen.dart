
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroductionScreen(
            globalBackgroundColor: Colors.white,
            scrollPhysics: BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                image: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', fit: BoxFit.cover,),
                titleWidget: Text("Write something something here etc etc "),
                body: "Write more things here to describe the page "
              ),
              PageViewModel(
                image: Image.network('https://picsum.photos/250?image=9', fit: BoxFit.cover,height: 300 ,width: MediaQuery.of(context).size.width),
                  titleWidget: Text("Write something something here etc etc "),
                  body: "Write more things here to describe the page "
              ),
              PageViewModel(
                image: Image.network('https://picsum.photos/250?image=9', fit: BoxFit.cover,height: 300 ,width: MediaQuery.of(context).size.width),
                  titleWidget: Text("Write something something here etc etc "),
                  body: "Write more things here to describe the page "
              ),
            ],
            onDone: (){
              Navigator.pushNamed(context, "home");
            },
            onSkip: (){
              Navigator.pushNamed(context, "home");

            },
            showSkipButton: true,
            skip: Text("Skip"),
            next: Icon(Icons.arrow_forward, color: Colors.blue,),
            back: Icon(Icons.arrow_back, color: Colors.blue,),
            done: Text("done"),
            dotsDecorator: DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20.0, 10.0),
              color: Colors.black,
              activeColor: Colors.blue,
              spacing: EdgeInsets.symmetric(horizontal: 3.0,),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),

              )
            ),
          ),
      ),

    );
  }
}
