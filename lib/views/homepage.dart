import 'package:flutter/material.dart';
import 'package:responsi_123200083/views/nasional.dart';
import 'package:responsi_123200083/views/olahraga.dart';
import 'package:responsi_123200083/views/teknologi.dart';
import 'package:responsi_123200083/views/terbaru.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                      onPressed: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Terbaru()));
                      },
                      child: Text('TERBARU')
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Nasional()));
                      },
                      child: Text('NASIONAL')
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Olahraga()));
                      },
                      child: Text('OLAHRAGA')
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Teknologi()));
                      },
                      child: Text('TEKNOLOGI',)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
