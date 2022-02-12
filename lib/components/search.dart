import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2), 
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          const Text('Search folders, file....', style: TextStyle(color: Color(0xFF88A2D8))),
          IconButton(onPressed: (){}, icon: Image.asset('img/search.png'), )
        ],
      ),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 50,
    );
  }
}