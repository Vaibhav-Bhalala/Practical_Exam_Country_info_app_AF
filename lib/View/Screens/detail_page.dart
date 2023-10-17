import 'package:flutter/material.dart';

import '../../Model/api_model.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Info data = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.80),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Colors.black.withOpacity(0.80),
        title: Text(
          "DETAILS",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Country : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "${data.countries}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Capital : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "${data.capital}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              child: Row(
                children: [
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Language : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: Colors.white,
                        )),
                  )),
                  Text(
                    "${data.lang}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Populations : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Text(
                    "${data.population} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "DONE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
