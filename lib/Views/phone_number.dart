// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
//
// class phonenumber extends StatefulWidget{
//   @override
//   State<phonenumber> createState() => _phonenumberState();
// }
//
// class _phonenumberState extends State<phonenumber> {
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(body: Column(
//      children: [
//        Center(child: SvgPicture.asset("assets/OBJECTS.svg"),
//          ),TextFormField(decoration:InputDecoration(BoxDecoration(borderRadius: BorderRadius.circular(100)),)
//        )],
//    ));
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'opt_verification.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: SvgPicture.asset(
              "assets/OBJECTS.svg",
              fit: BoxFit.contain,
            ),
          ),const Padding(
            padding:  EdgeInsets.only(right: 210,top: 20,),
            child: SizedBox(height:40,child: Text("Enter Phone Number")),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 20,left: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter phone number",
               // contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),const Padding(
            padding:  EdgeInsets.only(left: 20,top: 20),
            child: Row(
              children: [
                Text("By Continuing I agree to TotalX's"), Text("Terms and Conditions",style: TextStyle(color: Colors.lightBlue),),
              ],
            ),
          ),
          const SizedBox(height:40,child: Text("& privacy policy",style: TextStyle(color: Colors.lightBlue),)),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP()));}, style: ElevatedButton.styleFrom(minimumSize:Size(350, 50),
              backgroundColor: Colors.black), child: const Text("Get OTP",style: TextStyle(color: Colors.white),), )]),
      );
    
  }
}
