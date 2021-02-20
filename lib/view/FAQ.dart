import 'package:covid_app/model/post_model.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  Posts posts = new Posts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
                future: posts.getFAQ(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        var mydata = snapshot.data[index];
                        // UI starts from here
                        return Card(
                          child: ExpansionTile(
                            title: Text(mydata['question_np']),
                            children: [
                              Text(mydata['answer_np']),
                            ],
                          ),
                        );
                      },
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
