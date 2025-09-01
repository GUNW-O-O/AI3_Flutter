import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('상세 화면'),),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/product.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
            const SizedBox(height: 12.0,),
            Text(
              "자바스크립트",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 12.0,),
            Text(
              "상품 설명입니다",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "수량 : 10",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 20.0,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("장바구니")
                  )
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("장바구니")
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}