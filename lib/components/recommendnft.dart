import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "dart:math";
import "../data/data.dart";
import "package:animations/animations.dart";
import "../pages/viewnft.dart";


class Recommended extends StatefulWidget {
  Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {

  // Essential variables
  bool hearttap = false;
  @override
  Widget build(BuildContext context) {
    final nftkeys = nftlist.keys.toList();
    final random = Random();
    final indexes = random.nextInt(nftkeys.length);

    

    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            
            width: 343.49,
            height: 526,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(0.4),
                )
              ]
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(nftlist[nftkeys[indexes]]["picture"])
                  
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Text(nftlist[nftkeys[indexes]]["name"], style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                ),
                Container
                (
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset(nftlist[nftkeys[indexes]]["Creator profile"])
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Pawel Czerwinski", style: TextStyle(fontFamily: "Epilogue", fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black))
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(nftlist[nftkeys[indexes]]["Type"], style: TextStyle(fontFamily: "Epilogue", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black))
                            ),
                          ]
                        )
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              hearttap = !hearttap;
                            });
                          },
                          child: Image.asset('assets/images/hearticon.png', color: hearttap ? Colors.red: Colors.grey)
                        )
                      )
                    ]
                  )
                ),
              ]
            )
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reserve Price",
                          style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)
                        ),
                        TextSpan(
                          text: "1.50 ETH",
                          style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black)
                        ),
                        TextSpan(
                          text: r"$2,683.73",
                          style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),
                        )
                      ]
                    )
                  )
                ),
                
              ]
            )
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => PlaceBid(),
                      );
                    },
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
                        child: Text("Place a bid", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,))
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
                        color: Colors.white,
                        border: Border.all(width: 1, color: Color.fromRGBO(0, 56, 245, 1))
                      ),
                      child: Center(
                        child: Text("View artwork", style: TextStyle(fontFamily:"Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)))
                      )
                    )
                  )
        

              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 15),
            child: Row(
              children: [
                Container(
                  child: Image.asset('assets/images/liveauctiondot.png'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Live auctions", style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 15),

                  child: GestureDetector(
                    child: Container(
                      width: 118,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text("View all", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400,))
                      )
                    )
                  )
                )

              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
            
              children: List.generate(nftkeys.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewNft(nftlist[nftkeys[index]]["picture"], nftlist[nftkeys[index]]["name"]))
                    );
                  },
                  child: Container(
                    
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 343.49,
                        height: 526,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(38),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50,
                              color: Colors.grey.withOpacity(0.4)
                            )
                          ]
                          
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(nftlist[nftkeys[index]]["picture"])
                            ),
                            // The name of the nft
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Text(nftlist[nftkeys[index]]["name"], style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/creatorprofile1.png')
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(nftlist[nftkeys[index]]["Creator name"], style: TextStyle(fontFamily: "Epilogue", fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black))
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(nftlist[nftkeys[index]]["Type"], style: TextStyle(fontFamily: "Epilogue", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey,))
                                        )
                                      ]
                                    )
                                  ),
                                  Container(
                                    child: Image.asset('assets/images/hearticon.png')
                                  )
                                  

                                ]
                              )
                            ),
                            
                          ]
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 343,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(51),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50,
                              color: Colors.grey.withOpacity(0.4)
                            )
                          ]
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sold for ",
                                  style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)
                                ),
                                TextSpan(
                                  text: "2.00 ETH",
                                  style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black)
                                )
                              ]
                            )
                          )
                        )

                      )
                    ]
                  )
                ));
              })
            )
          )
        ]
      )
    );
    
  }
}
class PlaceBid extends StatefulWidget {
  PlaceBid({Key? key}) : super(key: key);

  @override
  State<PlaceBid> createState() => _PlaceBidState();
}

class _PlaceBidState extends State<PlaceBid> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 443.56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Place a Bid",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text("You must bid at least 0.825 ETH",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(85, 85, 85, 1)))
                        )
                      ]
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/images/x.png', color: Colors.black),
                    )
                  )
                ]
              )
            ),

            // The bid of your user
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Your bid", style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: List.generate(bidtype.length, (index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                
                                child: Text(bidtype[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black))
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(bidnumber[index], style: TextStyle(fontFamily: "Epilogue", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black))
                              )
                            ]
                          )
                        );
                      })
                    )
                  )
                ]
              )
            ),
            // The button 
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
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
                          child: Text("Place a bid", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,))
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 308,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(0, 56, 245, 1)
                          )
                        ),
                        child: Center(
                          child: Text("Cancel", style: TextStyle(fontFamily: "Epilogue", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black))
                        )
                      )
                    )
                  ),
                ]
              )
            )

          ]
        )
      )
    );
  }
}