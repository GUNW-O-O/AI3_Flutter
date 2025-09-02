import 'package:daily_cats_app/models/cat.dart';
import 'package:daily_cats_app/screens/detail_screen.dart';
import 'package:daily_cats_app/screens/upload_screen.dart';
import 'package:flutter/material.dart';

final List<Cat> cats = [
  Cat(
    id: "0",
    name: '별님이',
    title: '오늘의 귀염둥이',
    link: 'assets/images/cat_00.png',
    likeCount: 1930,
    replyCount: 6,
    created: DateTime(2025,11,13,22,14,53,982),
  ),
  Cat(
    id: "1",
    name: '버찌',
    title: '오늘의 귀염둥이2',
    link: 'assets/images/cat_01.png',
    likeCount: 3000,
    replyCount: 9,
    created: DateTime(2025,11,12,20,14,53,982),
  ),
  Cat(
    id: "2",
    name: '나비',
    title: '오늘의 귀염둥이3',
    link: 'assets/images/cat_02.png',
    likeCount: 1400,
    replyCount: 2,
    created: DateTime(2025,10,12,20,14,53,982),
  ),
  Cat(
    id: "3",
    name: '차차',
    title: '오늘의 귀염둥이3',
    link: 'assets/images/cat_03.png',
    likeCount: 1400,
    replyCount: 2,
    created: DateTime(2025,10,12,20,14,53,982),
  ),
  Cat(
    id: "4",
    name: '굿보이',
    title: '오늘의 귀염둥이3',
    link: 'assets/images/cat_04.png',
    likeCount: 1400,
    replyCount: 2,
    created: DateTime(2025,10,12,20,14,53,982),
  )
];

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Cats'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const UploadScreen(),
              );
            },
            icon: const Icon(Icons.camera_alt)
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: cats.length,
        itemBuilder: (_,int index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  cat: cats[index]
                ),
              ),
            );
          },
          child: Image.asset(
            cats[index].link,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}