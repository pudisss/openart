import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_database/firebase_database.dart";


Map nftlist = {
    "nft1": {
      "picture": "assets/images/Nft1.png",
      "name": "Silent Wave",
      "Creator profile": "assets/images/creatorprofile1.png",
      "Creator name": "Pawel Czerwinski",
      "Type": "Creator",
    },
    "nft2": {
      "picture": "assets/images/Nft2.png",
      "name": "George",
      "Create profile": "assets/images/creatorprofile1.png",
      "Creator name": "Pawel Czerwinski",
      "Type": "Creator",
    },
    "nft3": {
      "picture": "assets/images/Nft3.png",
      "name": "Mirror",
      "Creator profile": "assets/images/creatorprofile1.png",
      "Creator name": "Pawel Czerwinski",
      "Type": "Creator",
    },
    "nft4": {
      "picture": "assets/images/Nft4.png",
      "name": "",
      "Creator profile": "assets/images/creatorprofile1.png",
      "Creator name": "Pawel Czerwinski",
      "Type": "Creator",

    },
    "nft5": {
      "picture": "assets/images/Nft5.png",
      "name": "Shedd Aquarium",
      "Creator profile": "assets/images/creatorprofile1.png",
      "Creator name": "Pawel Czerwinski",
      "Type": "Creator",
    },
    
  };

Map hotbidlist = {
  "hotbit1": {
    "picture": "assets/images/hotbid1.png",
    "name": "Inside Kings Cross",
    "description": "Highest bid",
    "price": "1.00 ETH"

  },
  "hotbit2": {
    "picture": "assets/images/hotbid2.png",
    "name": "Inside Kings Cross",
    "description": "Highest bid",
    "price": "1.00 ETH"
  }
};

List hotcollectionimage = [
  "assets/images/hotcollection1.png",
  "assets/images/hotcollection2.png",
  "assets/images/hotcollection3.png",
  "assets/images/hotcollection4.png",
  
];

List contact = [
  "Instagram",
  "Twitter",
  "Discord",
  "Blog",
];
List titles = [
  "About",
  "Community Guidelines",
  "Terms of Services",
  "Privacy",
  "Careers",
  "Help"
];

// This is for activity purpose

Map activityprofile = {
  "user1": {
    "picture": "assets/images/avataricon.png",
    "title": "Auction won by David",
    "time": "June 04, 2021 at 12:00am",
    "price": "Sold for 1.50 ETH"
  },
  "user2": {
    "picture": "assets/images/avatarprofile2.png",
    "title": "Bid place by @pawel09",
    "time": "June 06, 2021 at 12:00am",
    "price": r"1.50 ETH  $2,683.73"
  },
  "user3": {
    "picture": "assets/images/avatarprofile2.png",
    "title": "Listing by @han152",
    "time": "June 04, 2021 at 12:00am",
    "price": r"1.00 ETH  $2,683.73"
  }
};

List bidtype = [
  "Enter bid",
  "Your balance",
  "Service fee",
  "Total",
];

List bidnumber = [
  'ETH',
  "4.568 ETH",
  "0.001 ETH",
  "0.001 ETH"
];


// Creator data list

Map creatorprofile = {
  "creator1": {
    "profile": "assets/images/creatorprofile1.png",
    "background": "assets/images/creatorbackground1.png",
    "name": "Kennedy Yanko",
    "description": "Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…",
    "followers": "2024"
  },
  "creator2": {
    "profile": "assets/images/creatorprofile2.png",
    "background": "assets/images/creatorbackground2.png",
    "name": "Holly Herndon",
    "description": "A family of artists in Ethiopia making art in the style of tizita- nostalgia and longing for the past. 📍 Addis Ababa  …",
    "followers": "1024",
  },
  "creator3": {
    "profile": "assets/images/creatorprofile3.png",
    "background": "assets/images/creatorbackground3.png",
    "name": "Addie Wagenknecht",
    "description": "Addie Wagenknecht and Aiala Hernando. Documentation of the End of the Worlds.", 
    "followers": "1099",
  },
  "creator4": {
    "profile": "assets/images/creatorprofile4.png",
    "background": "assets/images/creatorbackground4.png",
    "name": "Kinlaw",
    "description": """Audio Composer, Choreographer,Vocalist + Scientist ~Sigh of My Hand (1/3) is listed now ~made in partnersh…""",
    "followers": "1099",
  },
  "creator5": {
    "profile": "assets/images/creatorprofile5.png",
    "background": "assets/images/creatorbackground5.png",
    "name": "Jennifer Mehigan",
    "description": """LOW POLY GODDESS / Jennifer Mehigan is an interdisciplinary artist whose work engages with abstract manifestations of de…""",
    "followers": "1099"
  }
};