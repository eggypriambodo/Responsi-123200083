
import 'package:flutter/material.dart';
import 'package:responsi_123200083/model/list_news_model.dart';
import 'package:responsi_123200083/service/base_network.dart';

class Teknologi extends StatefulWidget {
  @override
  _TeknologiState createState() => _TeknologiState();
}

class _TeknologiState extends State<Teknologi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CNN TEKNOLOGI'),
      ),
      body: Container(
        child: FutureBuilder(
          future: BaseNetwork.getList('teknologi'),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<Berita> datas = [];
              for (var item in snapshot.data) {
                datas.add(Berita.fromJson(item));
              }
              return ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index){
                  Berita berita = datas[index];
                  return Card(
                    child: ListTile(
                      onTap: (){},
                      leading: Image.network(
                        '${berita.data.image.toLowerCase()}',
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),),
                      title: Text(berita.data.title),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Container(
                child: Center(
                  child: Text('Data tidak ditemukan'),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
