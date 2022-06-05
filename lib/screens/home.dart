import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:provider/provider.dart";
import "../data/data.dart";
import "package:platform/platform.dart";
import "../components/recommendnft.dart";
import "../components/hotbid.dart";
import "../components/hotcollection.dart";
import "homecreator.dart";



class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Fake fetching data function
  // In real world projects you have to fetch data from the database or the server
  // But in this project we don't have that so we are going to fetch fake data from our local database
  // That was coded from me

  Future<void> fakefetchData() async {
    // Fetch data from the database
    Future wait = Future.delayed(Duration(seconds: 1));

    return wait;



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FutureBuilder(
        future: fakefetchData(),
        builder: (context, AsyncSnapshot snapshot) {
          return (snapshot.connectionState == ConnectionState.done) ? 
          SingleChildScrollView(
        child: Container(
          
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset('assets/images/openartlogo.png'),
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeCreator())
                          );
                        },
                        
                        child: Image.asset('assets/images/menuicon.png')
                      )
                    ),
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                
                child: Column(
                  children: [
                    Container(
                      child: Text("Discover, collect and sell", style: TextStyle(fontFamily: "Epilogue", fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text("Your digital art", style: TextStyle(fontFamily: "Epilogue", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black))
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 327,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(240, 240, 240, 1),
                      filled: true,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      suffixIcon: Icon(Icons.mic, color: Colors.black),
                      hintText: "Search items, collections and accounts",
                      hintStyle: TextStyle(fontFamily:"Epilogue", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      )
                    )
                  )
                )
              ),
              // Recommended nft section
              // This section will have an algorithm that will calculate what kind of nft 
              // The application should rendered and show out
              Recommended(),
              // Hot bid single child scroll view in horizontal
              Hotbid(),
              // Hot collection child scroll view in horizontal
              HotCollection()

            ]
          )
        )
      ) : Center(child: CupertinoActivityIndicator(

        animating: true,
        radius: 20,
      ));
      
      }
    ));
  }
}