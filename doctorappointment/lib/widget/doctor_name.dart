import 'package:flutter/material.dart';

class doctor_name extends StatelessWidget{
   String img;
   String Name;
   String categotry;
   String fees;
   String location;
   double width;
  doctor_name(this.img, this.Name,this.categotry, this.fees,this.location, this.width);

 @override
  Widget build(BuildContext context) {

   return GestureDetector(
        onTap: () {
         Navigator.pushNamed(context, "/doctorreserve");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Container(
            
       width: width,
          decoration: BoxDecoration(
       
           color: Color(0xFF00abff),
            borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.symmetric(horizontal:20,
          vertical: 16),
      
          child: Row(
             mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(img, height: 30,),
       SizedBox(width: 7,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(Name, style: TextStyle(
                    color: Color(0xFF0077c6),
                    fontSize: 14
                  ),),
                  SizedBox(height: 2,),
                  Text(categotry, style: TextStyle(
                    fontSize: 14
                  ),),
                   SizedBox(height: 2,),
                   
                  Text(location, style: TextStyle(
                    fontSize: 13
                  ),)
                ],
              ),
                Container(
                padding: EdgeInsets.symmetric(horizontal: 15,
                vertical: 5),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF0077c6),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(fees, style: TextStyle(
                  
                   color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
            ),   ),),
            
               ],
          ),
   ),
        ) ); 
      
}

  }
  
  