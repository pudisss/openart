import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";

class ViewCreator extends StatefulWidget {
  final background;
  final profile;
  ViewCreator(this.background, this.profile);

  @override
  State<ViewCreator> createState() => _ViewCreatorState(this.background, this.profile);
}

class _ViewCreatorState extends State<ViewCreator> {
  final background;
  final profile;

  _ViewCreatorState(this.background, this.profile);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
          
          color: Color.fromRGBO(248, 248, 248, 1),
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
                            child: Icon(Icons.search, color: Colors.black)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset('assets/images/menuicon.png')
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
               
                width: MediaQuery.of(context).size.width,
                height: 295,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 134.85,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(background)
                          )
                        ),
                        child: Container(
                          
                          
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: Image.asset("assets/images/2dot.png")
                                )
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: Image.asset("assets/images/enternalicon.png")
                                )
                              ),
                            ]
                          )
                        )
                        
                      ),
                      Container(

                      )
                    ]
                  )
                
                

              ),

            ]
          )
        )
      )
    );
  }
}