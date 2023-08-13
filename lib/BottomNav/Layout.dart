import 'package:flutter/material.dart';
import 'package:projects/BottomNav/Profile.dart';
import 'package:projects/BottomNav/Done.dart';
import 'package:projects/BottomNav/Tasks.dart';



class layoutscreen extends StatefulWidget {
  const layoutscreen({super.key});
  @override
  State<layoutscreen> createState() => _layoutscreenState();
}

class _layoutscreenState extends State<layoutscreen> {
  // SuccessStories? successStories;
  bool loading = true;
  int indax=0;
  List<Widget> screens=[
    Taskscreen(),
    Donescreen(),
    ProfileScreen(),



  ];
  // getData()async{
  //    successStories = await ApiProvider().getStories();
  //    setState(() {
  //      loading = false;
  //    });
  //
  // }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   getData();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text("Test App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,elevation: 0,backgroundColor: Colors.blue,),
      //body: loading? CircularProgressIndicator(color: Colors.blue,) : Image.network(successStories!.model![2].image!),
       body: screens[indax],
      bottomNavigationBar: BottomNavigationBar(

       currentIndex: indax,
      selectedItemColor: Colors.red,
      onTap: (index) {
        setState(() {
          indax=index;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label: "Shop",),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),




      ]),



    );
  }
}
