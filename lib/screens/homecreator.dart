import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:openart/data/data.dart';
import "dart:math";
import "../data/data.dart";
import "package:animations/animations.dart";
import "../pages/viewcreator.dart";


class HomeCreator extends StatefulWidget {
  HomeCreator({Key? key}) : super(key: key);

  @override
  State<HomeCreator> createState() => _HomeCreatorState();
}

class _HomeCreatorState extends State<HomeCreator> {
  // Essential variables
  bool follow = false;
  @override
  Widget build(BuildContext context) {

    final creatorkeys = creatorprofile.keys.toList();
    final random = Random();
    final index = random.nextInt(creatorkeys.length);
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
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.search, color: Colors.black)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset('assets/images/menuicon.png')
                          ),
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text("Discover creator", style: TextStyle(fontFamily: 'Epilogue', fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 230.8,
                      height: 48.88,
                      child: Text("Follow at least five creators to build your feed…",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
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
                        child: Text("Feature Creator", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,))
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 123,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("All Creator", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                      )
                    )
                  ]

                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: List.generate(creatorprofile.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ViewCreator(creatorprofile[creatorkeys[index]]["background"], creatorprofile[creatorkeys[index]]["profile"]))
                        );
                      },
                      child: Container(
                      margin: EdgeInsets.only(top:30),
                      width: 343,
                      height: 393.84,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage(creatorprofile[creatorkeys[index]]["background"])
                        )
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 100),
                            child: Image.asset(creatorprofile[creatorkeys[index]]["profile"])
                            
                            
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(creatorprofile[creatorkeys[index]]["name"], style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 312.4,
                                  height: 81.7,
                                  child: Text(creatorprofile[creatorkeys[index]]["description"],textAlign: TextAlign.center, style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                                )
                              ]
                            )
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: creatorprofile[creatorkeys[index]]["followers"],
                                          style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black)
                                        ),
                                        TextSpan(
                                          text: "Followers",
                                          style: TextStyle(fontFamily: "Epilogue", fontSize: 16,  fontWeight: FontWeight.w500, color: Colors.grey,)
                                        )
                                      ]
                                    )
                                  )
                                ),
                                GestureDetector(
                                  
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 112,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),

                                  ),
                                  child: Center(
                                    child: Text("Follow", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                                  )
                                ))
                              ]
                            )
                          )
                        ]
                      )
                    ));
                  })
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 305,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Color.fromRGBO(0, 56, 245, 1)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset('assets/images/Plus.png')
                    ),
                    Container(
                      child: Text("Load More", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/images/openartlogo.png')
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "The",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w200, color: Colors.black)
                            ),
                            TextSpan(
                              text: "New",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w400, color: Colors.black)
                            ),
                            TextSpan(
                              text: "Creative",
                              style: TextStyle(fontFamily: 'Epilogue', fontSize: 25.72, fontWeight: FontWeight.w500, color: Colors.black)
                            ),
                            TextSpan(
                              text: "Economy",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w700, color: Colors.black)
                            )
                          ]
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Container(
                            
                            child: GestureDetector(
                              child: Container(
                                width: 343,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
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
                                  child: Text("Earn now", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
                                )
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: GestureDetector(
                              child: Container(
                                width: 343,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 1, color: Color.fromRGBO(0, 56, 245, 1)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text("Discover More", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(85, 85, 85, 1)))
                                )
                                

                              )
                            )
                          )
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: MediaQuery.of(context).size.width,
                      height: 309.94,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(34, 34, 34, 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 20),
                                  child: Column(
                                    children: List.generate(contact.length, (index) {
                                      return Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(contact[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,))
                                      );
                                    })
                                  )
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: List.generate(titles.length, (index) {
                                      return Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(titles[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,))
                                      );
                                    })
                                  )
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Divider(
                              color: Colors.white
                            )
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Text("© 2021 Openart", style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white,))
                          )
                        ]
                      )
                    )

                  ]
                )
              )
            ]
          )
        )
      )

    );
  }
}