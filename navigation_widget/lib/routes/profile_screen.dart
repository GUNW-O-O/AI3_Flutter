import 'package:flutter/material.dart';
import 'package:navigation_widget/models/profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // ⭐ 데이터 전달 받기
    // String? data = ModalRoute.of(context)?.settings.arguments as String?;
    Profile? profile = ModalRoute.of(context)?.settings.arguments as Profile?;

    //  Text 공통 스타일
    TextStyle textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Profile Screen'),
            Text(
              'Received data :', style: textStyle,),
            Text('${profile?.id}', style: textStyle,),
            Text('${profile?.name}', style: textStyle,),
            Text('${profile?.email}', style: textStyle,),
          ],
        )
      ),
    );
  }
}