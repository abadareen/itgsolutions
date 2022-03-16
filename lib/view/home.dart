import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(
          textColor: Colors.green,
          size: 25.0,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.green,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: 100,
                color: Colors.white,
                child: const Text(
                  "Get coaching",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 90, 25, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 40, 5, 5),
                            child: const Text(
                              '206',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Container(
                        height: 50,
                        width: 125,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Buy more',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4,
            shrinkWrap: true,
            children: [
              _buildCard('Tom', 'Available', 1),
              _buildCard('Tom', 'Away', 2),
              _buildCard('Tom', 'Away', 3),
              _buildCard('Tom', 'Available', 4),
              _buildCard('Tom', 'Away', 5),
              _buildCard('Tom', 'Available', 6),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 7,
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'data:image/jpeg;base64,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'))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: status == 'Away' ? Colors.amber : Colors.green,
                      border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 20,
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  status,
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 175,
                  decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey : Colors.green,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: const Center(
                    child: Text(
                      'Request',
                      style: TextStyle(fontFamily: 'Quicksand'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        margin: cardIndex.isEven
            ? const EdgeInsets.fromLTRB(10, 0, 25, 10)
            : const EdgeInsets.fromLTRB(25, 0, 5, 10));
  }
}
