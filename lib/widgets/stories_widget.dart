import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 15.0),
          Stack(children: [
            Container(
              width: 120.0,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/ahmedsherif.png'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10.0)
              ),
            ),
            Positioned(right: 5, bottom: 5,
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/plus.png')
            ),),

          ],),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story2.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("Mohammed",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,
              ),
              Positioned(left: 5, top: 5,
                child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/john.jpg')
                ),),
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story1.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("Swlgan",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,),
              Positioned(left: 5, top: 5,
                child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/abyu.png')
                ),),
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story3.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("El-Joker",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,),
              Positioned(left: 5, top: 5,
                child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/eljoker.png')
                ),),
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story5.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("Nahed",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,
              )
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story7.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("swsn",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,
              )
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story8.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("zaki",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,
              )
            ],
          ),
          SizedBox(width: 10.0),
          Stack(
            children: [
              Container(
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/story4.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Positioned(child: Text("AboKaram",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 20),),bottom: 9,
              )
            ],
          ),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}