import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:openart/data/data.dart';


class ViewNft extends StatefulWidget {
  final nftimage;
  final name;
  ViewNft(this.nftimage, this.name);

  @override
  State<ViewNft> createState() => _ViewNftState(this.nftimage, this.name);
}

class _ViewNftState extends State<ViewNft> {
  // The variables and things that have to pass from the home page
  final nftimage;
  final name;


  // Essential variables that we need to use in the UI
  List<String> categories = [
    r"#color",
    r"#circle",
    r"#black",
    r"#art"
  ];
  List categorieswidth = [
    double.parse("66"),
    double.parse("68"),
    double.parse("66"),
    double.parse("51")
  ];

  List viewonfilepath = [
    "assets/images/etherscanicon.png",
    "assets/images/stariconview.png",
    "assets/images/metadataicon.png"
  ];
  List viewontitle = [
    "View on Etherscan",
    "View on IPFS",
    "View IPFS Metadata"
  ];
  _ViewNftState(this.nftimage, this.name);
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/openartlogo.png')
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Image.asset('assets/images/menuicon.png')
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.asset(nftimage)
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Container(
                      child: Text(name, style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              
                            ),
                            child: Center(
                              child: Image.asset('assets/images/hearticon.png', color: Colors.black)
                            )
                          ),
                          
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              
                            ),
                            child: Center(
                              child: Image.asset("assets/images/saveicon.png")
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, right: MediaQuery.of(context).size.width * 0.5),
                width: 146.45,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(52),
                  color: Colors.white,

                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/avataricon.png')
                    ),
                    Container(
                      child: Text("@openart", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight:FontWeight.w700,color: Colors.black))
                    )
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10,),
                width: 313.29,
                height: 120.52,
                child: Text("Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.", style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black))
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return Container(
                      width: categorieswidth[index],
                      height: 28,
                      margin: EdgeInsets.only(left: 15),

                      
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),

                      ),
                      child: Center(
                        child: Text(categories[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey))
                      )
                    );
                  })
                  
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: List.generate(viewonfilepath.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 343,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            color: Colors.grey.withOpacity(0.4),
                            offset: Offset(40, 40)
                          ),
                          BoxShadow(
                            blurRadius: 50,
                            color: Colors.white,
                            offset: Offset(-40, -40)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset(viewonfilepath[index])
                          ),
                          Container(
                            child: Text(viewontitle[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                          ),
                          Container(
                            child: Image.asset('assets/images/enternalicon.png')
                          )
                        ]
                      )
                    );
                  })
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 343,
                height: 141.67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color.fromRGBO(252, 252, 252, 1),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      color: Colors.grey.withOpacity(0.4),
                      offset: Offset(40, 40)
                    ),
                    BoxShadow(
                      blurRadius: 50,
                      color: Colors.white,
                      offset: Offset(-40, -40)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 20),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Sold for ",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)
                            ),
                            TextSpan(
                              text: "1.50 ETH  ",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black)
                            ),
                            TextSpan(
                              text: r"$2,683.73",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey)
                            )
                          ]
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                            child: Text("Owner by", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black))
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 146.45,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(52)
                            ),
                            child: Row(
                
                              children: [
                                Container(
                                  child: Image.asset('assets/images/avataricon.png')
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  
                                  child: Text("@david", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                                )
                              ]
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Text("Activity", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black))
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: List.generate(activityprofile.length, (index) {
                    final activitykeys = activityprofile.keys.toList();

                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 343,
                      height: 97.87,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [
                          Container(
                            child: Image.asset(activityprofile[activitykeys[index]]["picture"])
                            
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(activityprofile[activitykeys[index]]["title"],textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(activityprofile[activitykeys[index]]["time"],textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500))
                                ),
                                Container(
                                  child: Text(activityprofile[activitykeys[index]]["price"],textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700))
                                ),
                              ]
                            )
                          ),
                          Container(
                            child: Image.asset('assets/images/enternalicon.png')

                          ),
                        ]
                      )
                    );
                  })
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
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
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w200
                              , color: Colors.black),
                            ),
                            TextSpan(
                              text: "New",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w300, color: Colors.black)
                            ),
                            TextSpan(
                              text: "Creative",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, fontWeight: FontWeight.w500, color: Colors.black)
                            ),
                            TextSpan(
                              text: "Economy",
                              style: TextStyle(fontFamily: "Epilogue", fontSize: 25.72, color: Colors.black, fontWeight: FontWeight.w700)
                            )
                          ]
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
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
                                  child: Text("Earn now", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,))
                                )
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              child: Container(
                                width: 343,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  border: Border.all(width: 1, color: Color.fromRGBO(0, 56, 245, 1),),

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
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 20, left: 20),
                                  
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: List.generate(contact.length, (index) {
                                      return Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(contact[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))
                                      );
                                    })
                                  )
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20, top: 20),
                                  child: Column(
                                    children: List.generate(titles.length, (index) {
                                      return Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(titles[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,))

                                      );
                                    })
                                  )
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Divider(
                              color: Colors.white,
                            )
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 15, left: 20),
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

