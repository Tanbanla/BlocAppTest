import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 41,
                          height: 41,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                        ),
                        Container(
                          height:40, width: 40, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child:  ClipOval(child: Image.asset('assets/images/profile.jpg', fit: BoxFit.cover,))
                        )
                      ],
                    ),
                    SizedBox(width: 4,),
                    Column(
                      children: [
                        Text('Welcome!',style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.outline),),
                        Text('John Adam', style:  TextStyle( fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings)),  
              ],
            ),
            Container(
              width: size.width,
              height: size.height* .3,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius:  BorderRadiusDirectional.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
