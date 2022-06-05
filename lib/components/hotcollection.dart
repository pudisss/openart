import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:openart/data/data.dart';

class HotCollection extends StatefulWidget {
  HotCollection({Key? key}) : super(key: key);

  @override
  State<HotCollection> createState() => _HotCollectionState();
}

class _HotCollectionState extends State<HotCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Container(
                  child: Image.asset('assets/images/staricon.png')
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Hot Collection", style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                )
              ]
            )
          ),
          Container(
            height: 430,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: List.generate(hotcollectionimage.length, (index) {
                return Container(
                  child: Image.asset(hotcollectionimage[index])
                );
              })
              
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Water and subflower", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 89,
                  height: 31.61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color:Colors.grey, width: 1)
                  ),
                  child: Center(
                    child: Text("30 Items", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black))
                  )
                ),
              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/images/creatorprofile1.png')
                      ),
                      Container(
                        child: Text("By Rodion Kutsaev", style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w700, color: Colors.black))
                      )
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 141,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset('assets/images/hearticon.png')
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("Follow", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey))
                        )
                      ]
                    )
                  )
                )
              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            width: 343,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 56, 245, 1)),
              color:Colors.white,
            ),
            child: Center(
              child: Text("View more Collection", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Divider(
            color: Colors.grey,

          )),
          // Ending of this page
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/openartlogo.png')
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "The",
                          style: TextStyle(fontFamily: 'Epilogue', fontSize: 25.72, fontWeight: FontWeight.w200)
                        ),
                        TextSpan(
                          text: "New",
                          style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w300, color: Colors.black)
                        ),
                        TextSpan(
                          text: "Creative",
                          style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w500, color:Colors.black)
                        ),
                        TextSpan(
                          text: "Economy",
                          style: TextStyle(fontFamily:"Epilogue", fontSize: 25.72, fontWeight: FontWeight.w700, color: Colors.black)
                        ),
                      ]
                    )
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Container(
                            width: 343,
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
                              child: Text("Earn Now", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color:Colors.white))
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
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(0, 56, 245, 1)
                              )
                            ),
                            child: Center(
                              child: Text("Discover More", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                            )
                          )
                        )
                      )
                    
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 377.7,
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
                              margin: EdgeInsets.only(top: 30, left: 20),
                              child: Column(
                                children: List.generate(contact.length, (index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text(contact[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))
                                  );
                                })
                              )
                            ),
                            Container(
                              
                              child: Column(
                              
                                children: List.generate(titles.length, (index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 20, right: 20),
                                  
                                    child: Text(titles[index],textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))
                                  );
                                })
                              )
                            ),
                          ]
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Divider(
                          color: Colors.white,
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("© 2021 Openart", style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white))
                      )
                    ]
                  )
                )
              ]
            )
            
          )
        ]
      )
    );
  }
}