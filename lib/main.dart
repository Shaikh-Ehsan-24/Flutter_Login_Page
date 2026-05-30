
import 'package:flutter/material.dart';
void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
           child: Column(
             children: [
               SizedBox(width: 500,height: 150,),
               Image.asset("assets/images/sign.png",width: 40,height: 40,),
               SizedBox(height: 25,),
              Text("Welcome Back",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 22),),
               SizedBox(height: 25,),
              SizedBox(
                width: 300,
                child:TextField(
                 decoration: InputDecoration(
                   hint: Text("Username or Email"),
                   prefixIcon: Icon(
                     Icons.person_outline,
                     color: Colors.black,
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20)
                   )
                 ),
                ),
              ),
               SizedBox(height: 30,),
               SizedBox(
                 width: 300,
                 child: TextField(
                   decoration: InputDecoration(
                     hint: Text("Password "),
                     prefixIcon: Icon(
                       Icons.lock
                     ),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20)
                     )
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               SizedBox(
                 width: 250,
                height: 50,
                 child: ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(color: Colors.black),),),
               ),
               SizedBox(height: 25,),
             Text("Forgot Password ?",style: TextStyle(color: Colors.blue),),
               SizedBox(height: 15,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 spacing:20,
                 children: [
                   Text("Dont have an accounts ?"),
                   TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.blue),))
                 ],
               ),
               SizedBox(height: 10,),
               Text("------------------------------ OR -----------------------------",style: TextStyle(fontSize: 15), ),
               SizedBox(height: 20,),
               Text("Sign Up With Social Network"),
               SizedBox(height: 20,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 spacing: 70,
                 children: [
                        Image.asset("assets/images/whatsap.png",width: 25,height: 25,),
                       Image.asset("assets/images/insta.png",width: 25,height: 25,),
                       Image.asset("assets/images/facebook.png",width: 25,height: 25,),
                 ],
               ),
               SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               spacing: 30,
               children: [
                 Text("Whatsapp"),
                 Text("Instagram"),
                 Text("Facebook")
               ],
             ) 
             ],
       )),
     );

  }

}