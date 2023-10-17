import 'package:exam_1_af/component/api_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.80),
        title: Text(
          "HOME",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: api_helper.api.getdata(),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
                itemCount: 250,
                itemBuilder: (ctx, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        'detail',
                        arguments: data![i],
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        color: Colors.black.withOpacity(0.80),
                        child: ListTile(
                          leading: Text(
                            "${i + 1}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            data![i]!.countries.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
