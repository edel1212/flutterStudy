import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// Root Class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * ℹ️ Root Widget은 항상 MaterialApp 또는 CupertinoApp 반환해야한다.
     *   ㄴ> 각각 MaterialApp(구글), CupertinoApp(애플)의 디자인 시스템이다.
     *   해당 디자인 시스템으로 전체적인 디자인 틀을 잡고 시작하는 것이다.
     * 
     * Flutter 자체가 Google에서 만들었기에 Material가 좀 더 최적화된 디자인이 많다
     */
    return MaterialApp(
        /**
       * 👉 일반 적인 UI 구성은 Scaffold 구조로 되어있기에 FLutter에서도
       *    Scaffold Class가 있다! 사용해주자
       */
        home: Scaffold(
      backgroundColor: Color(0xFF181818),
      // 패딩 적용
      body: Padding(
          // 패딩 적용 방식
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey Yoo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "\$5 194 482",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        child: Text(
                          "Transfer",
                          style: TextStyle(fontSize: 20),
                        ),
                      ))
                ],
              )
            ], /** 전체 Padding -end */
          )),
    ));
  }
}
