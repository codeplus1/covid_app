

import 'package:carousel_pro/carousel_pro.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/model/post_model.dart';
import 'package:covid_app/view/FAQ.dart';


Color primaryBlack = Color(0xff202c3b);

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Posts posts = new Posts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Theme.of(context).brightness == Brightness.light
                  ? Icons.lightbulb_outline
                  : Icons.highlight),
              onPressed: () {
                DynamicTheme.of(context).setBrightness(
                    Theme.of(context).brightness == Brightness.light
                        ? Brightness.dark
                        : Brightness.light);
              })
        ],
        title: Text("Covid-19 Status"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //nepal data

            FutureBuilder(
              future: posts.getNepalDetails(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.orange[100],
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "You're only here for a short visit👉आप यहाँ केवल एक छोटी यात्रा के लिए हैं ||",
                            style: TextStyle(
                                color: primaryBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.orange[100],
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "👍Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.✔\n💖जीवन में कभी भी डरना नहीं है, केवल समझना है। अब अधिक समझने का समय है, ताकि हम कम डर सकें✔",
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 170.0,
                          width: MediaQuery.of(context).size.width,
                          child: Carousel(
                            autoplayDuration: Duration(seconds: 8),
                            showIndicator: false,
                            dotColor: primaryBlack,
                            images: [
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj4.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj1.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj2.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/saroj3.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: primaryBlack,
                          ),
                          height: 160,
                          width: MediaQuery.of(context).size.width,
                          child: Wrap(
                            children: [
                              Container(
                                child: Text(
                                  "Covid-19 Data of Nepal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                color: Colors.black26,
                                height: 25,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Positive Cases 😭",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['tested_positive'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Negative Cases 😨",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['tested_negative'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Isolation Cases😞",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['in_isolation'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Quarantine Cases🤔",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['quarantined'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Recovered Cases😃",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['recovered'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Deaths Cases 😢",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    snapshot.data['deaths'].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),

            Column(
              children: [
                FutureBuilder(
                  future: posts.getWorldDetails(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Container(
                        child: Column(
                          children: [],
                        ),
                      );
                    }
                  },
                )
              ],
            ),
            //FAQ
            OutlineButton(
              color: primaryBlack,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FAQ()));
              },
              child: Text(
                "FAQ OF COVID-19",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
