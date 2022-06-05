import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:animations/animations.dart";
import "../data/data.dart";
import "dart:math";

class Hotbid extends StatefulWidget {
  Hotbid({Key? key}) : super(key: key);

  @override
  State<Hotbid> createState() => _HotbidState();
}

class _HotbidState extends State<Hotbid> {
  
  
  @override
  Widget build(BuildContext context) {
    final hotbidkeys = hotbidlist.keys.toList();
  final randoms = Random();
  final indexes = randoms.nextInt(hotbidkeys.length);
    return Container(
  
     
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                Container(
                  child: Image.asset('assets/images/fireicon.png')
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Hot bid", style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Image.asset('assets/images/backarrow.png')
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          child: Image.asset('assets/images/forwardarrow.png')
                        )
                      ),
                    ]
                  )
                )
              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(hotbidlist.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(hotbidlist[hotbidkeys[index]]["picture"])
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,

                                      child: Text(hotbidlist[hotbidkeys[index]]["name"], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      width: 77.98,
                                      height: 31.61,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(34),
                                        border: Border.all(width: 1, color: Colors.grey)
                                      ),
                                      child: Center(
                                        child: Text("2.3 ETH", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                                      )
                                    )
                                  ]
                                )
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: hotbidlist[hotbidkeys[index]]["description"],
                                        style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors. black)
                                      ),
                                      TextSpan(
                                        text: hotbidlist[hotbidkeys[index]]["price"],
                                        style: TextStyle(fontFamily:"Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black)
                                      )
                                    ]
                                  )
                                )
                              )
                            ]
                          )
                        )
                      ]
                    )
                  );
                })
              )
            )
          )
        ]
      )
    );
  }
}