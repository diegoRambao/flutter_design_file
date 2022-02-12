import 'package:flutter/material.dart';

import 'components/card_file_type.dart';
import 'components/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Files',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: const Color(0xFFF9FAFB)
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('img/eva_bar-chart.png'), ),
        automaticallyImplyLeading: false,
        title: const Text('Home', style: TextStyle(color: Color(0xFF284379), fontSize: 24.0),),
        backgroundColor: const Color(0xFFF9FAFB),
        elevation: 0.0,
        actions: [
          Stack(
            children: [
              Image.asset('img/avatar.png'),
              Positioned(
                right: 10,
                top: 6,
                child: Container(width: 10.0, height: 10.0, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(5.0)),)
              ),
            ],
          )
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Search(),
            RecentyList(),
            FileTypeList(),
          ],
        ),
      ),
    );
  }
}


class RecentyList extends StatelessWidget {
  const RecentyList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 14.0),
          child: Text('Recenty Modified', style: TextStyle(color: Color(0xFF284379), fontWeight: FontWeight.w500, fontSize: 18.0)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 130.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(width: 8.0),
              Container(
                width: 150.0,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset('img/folder.png'),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF769AD),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Text('Files', style: TextStyle(color: Color(0xFF284379), fontWeight: FontWeight.w600,fontSize: 16.0)),
                      const SizedBox(height: 6.0,),
                      const Text('08:45 am', style: TextStyle(color: Color(0xFF5D7CA6), fontSize: 12.0))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFFF8C4DE), const Color(0xFFE05199).withOpacity(.7)]
                  )
                ),
              ),
              const SizedBox(width: 8.0,),         
              Container(
                width: 150.0,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset('img/folder.png'),
                          decoration: BoxDecoration(
                            color: const Color(0xFF78DEF9),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        const Text('Directory', style: TextStyle(color: Color(0xFF284379), fontWeight: FontWeight.w600,fontSize: 16.0)),
                        const SizedBox(height: 6.0,),
                        const Text('12:45 am', style: TextStyle(color: Color(0xFF5D7CA6), fontSize: 12.0))
                      ],
                    ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFFA9EDEF), const Color(0xFF28979A).withOpacity(.7)]
                  )
                ),
              ),
              const SizedBox(width: 8.0,),            
              Container(
                width: 150.0,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset('img/folder.png'),
                        decoration: BoxDecoration(
                          color: const Color(0xFFAA98FB),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      const Text('Directory', style: TextStyle(color: Color(0xFF284379), fontWeight: FontWeight.w600,fontSize: 16.0)),
                      const SizedBox(height: 6.0,),
                      const Text('12:45 am', style: TextStyle(color: Color(0xFF5D7CA6), fontSize: 12.0))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFFDDD6FB), const Color(0xFF8F76FA).withOpacity(.7)]
                  )
                ),
              ),
              const SizedBox(width: 8.0)             
            ],
          ),
        ),
      ],
    );
  }
}

class FileTypeList extends StatelessWidget {
  const FileTypeList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 6.0),
          child: Text('File Type', style: TextStyle(color: Color(0xFF284379), fontWeight: FontWeight.w500, fontSize: 18.0)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: const [
                CardFileType(
                  name: 'Official Doucments',
                  percentage: 0.19,
                  percentageText: '19',
                  quantity: '01.03',
                  img: 'folder2.png',
                ),
                CardFileType(
                  name: 'Music',
                  percentage: 0.75,
                  percentageText: '75',
                  quantity: '02.03',
                  img: 'music1.png',
                ),
                CardFileType(
                  name: 'Picture',
                  percentage: 0.69,
                  percentageText: '69%',
                  quantity: '01.83',
                  img: 'photo1.png',
                ),
                CardFileType(
                  name: 'My Favorite Pictures',
                  percentage: 0.69,
                  percentageText: '69%',
                  quantity: '40.03',
                  img: 'image2.png',
                ),
                CardFileType(
                  name: 'Documents',
                  percentage: 0.40,
                  percentageText: '69%',
                  quantity: '01.01',
                  img: 'google-docs1.png',
                ),
            ],
          ),
        ),
      ],
    );
  }
}