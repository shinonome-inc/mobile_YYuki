import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  Widget _searchTextField() {
    return const TextField();
  }

  Widget _defaultListView() {
    return ListView.builder(itemBuilder: (context, index) {
      return const Card();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Feed',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Pacifico-Regular',
              ),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(65.0),
                child: Container(
                    height: 65.0,
                    margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: TextField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  fillColor:
                                      const Color.fromRGBO(118, 118, 128, 0.12),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  hintText: 'Search',
                                  prefixIcon: const Icon(Icons.search),
                                  iconColor:
                                      const Color.fromRGBO(142, 142, 147, 0),
                                  hintStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )))));
  }
}
