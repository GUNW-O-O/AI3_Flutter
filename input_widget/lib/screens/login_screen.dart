import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // state
  bool _rememberId = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          const Text("로그인", style: TextStyle(fontSize: 30.0)),
          SizedBox(height: 50,),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "아이디",
              hintText: "아이디를 입력해 주세요."
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: true,    // 입력 기호로 숨김 여부
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "비밀번호",
              hintText: "비밀번호를 입력해 주세요."
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              // 아이디 저장
              Row(children: [
                Checkbox(
                  value: _rememberId,
                  onChanged: (value) {
                    setState(() {
                      _rememberId = value!;
                    });
                  }
                ),
                GestureDetector(
                  child: const Text("아이디 저장"),
                  onTap: () {
                    setState(() {
                      _rememberId = !_rememberId;
                    });
                  },
                )
              ],),
              // 자동 로그인
              Row(children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  }
                ),
                GestureDetector(
                  child: const Text("자동 로그인"),
                  onTap: () {
                    setState(() {
                      _rememberMe = !_rememberMe;
                    });
                  },
                )
              ],)
            ],
          ),
          SizedBox(height: 20,),
          // 로그인 버튼
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              // 버튼 최소 크기
              // double.infinity : 디바이스의 최대크기로 지정
              minimumSize: const Size(double.infinity, 50)
            ),
            child: const Text("로그인", style: TextStyle(fontSize: 24),)
          )
        ],
      ),
    );
  }
}