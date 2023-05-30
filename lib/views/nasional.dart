
import 'package:flutter/material.dart';
import 'package:responsi_123200083/model/list_news_model.dart';
import 'package:responsi_123200083/service/base_network.dart';
import 'package:responsi_123200083/views/detail_news.dart';

class Nasional extends StatefulWidget {
  @override
  _NasionalState createState() => _NasionalState();
}

class _NasionalState extends State<Nasional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CNN NASIONAL'),
      ),
      body: Container(
        child: FutureBuilder(
          future: BaseNetwork.get('nasional'),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              ListNewsModel berita = ListNewsModel.fromJson(snapshot.data);
              return ListView.builder(
                itemCount: berita.data!.posts!.length,
                itemBuilder: (context, index){
                  return Card(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailBerita(
                                title: berita.data!.posts![index].title!,
                                pubDate:
                                berita.data!.posts![index].pubDate!,
                                thumbnail:
                                berita.data!.posts![index].thumbnail!,
                                description:
                                berita.data!.posts![index].description!,
                                link: berita.data!.posts![index].link!,
                              ),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                              '${berita.data!.posts![index].thumbnail!.toLowerCase()}',
                              errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                          width: 250,
                          height: 125,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 7, right: 7, top: 10
                              ),
                                child: Text(berita.data!.posts![index].title!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),)),
                          ),
                        ],
                      ),
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
