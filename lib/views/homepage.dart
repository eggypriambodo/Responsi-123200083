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
            Container(
              child: Image.network('https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png'),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                    ),
                      onPressed: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Terbaru()));
                      },
                      child: Text('Terbaru')
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Nasional()));
                      },
                      child: Text('Nasional')
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Olahraga()));
                      },
                      child: Text('Olahraga')
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> Teknologi()));
                      },
                      child: Text('Teknologi')
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
