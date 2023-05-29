import 'package:flutter/material.dart';
import 'package:responsi_123200083/service/base_network.dart';

class DetailBerita extends StatefulWidget {
  const DetailBerita({Key? key}) : super(key: key);

  @override
  State<DetailBerita> createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: BaseNetwork.get('posts'),
        builder: (context, AsyncSnapshot snapshot) {
          return Center(
            child: Column(
              children: [
                Text(''),
                Text('data'),
                Image.network('src'),
                Text('data'),
                TextButton(
                    onPressed: (){},
                    child: Text('data'),)
              ],
            ),
          );
        }
      ),
    );
  }
}
