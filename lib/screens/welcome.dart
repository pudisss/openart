import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'home.dart';


class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/images/openartlogo.png')

                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('assets/images/searchicon.png')
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset('assets/images/closeicon.png')
                        )
                      ]
                    )
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 110),
              child: Column(
                children: [
                  Container(
                  
                    child: GestureDetector(child: Text("About Open Art", style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black)))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: GestureDetector(
                      child: Text("Blog", style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black))
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: GestureDetector(
                      child: Text("Help", style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black))
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: GestureDetector(
                      child: Text("Contact", style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black))
                    )
                  )
                ]
              )
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 100),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                  );
                },
                child: Container(
                  width: 308,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 56, 245, 1),
                        Color.fromRGBO(159, 3, 255, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  ),
                  child: Center(
                    child: Text("Connect Wallet", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,))
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}