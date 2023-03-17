import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage(
                  'images/yeji.jpeg',
                ),
                width: 270,
              ),
            ),
            // TextFeild로 정보를 구현하는 화면을 구성할 때  사용
            Form(
                child: Theme(
                    data: ThemeData(
                        // 텍스트필드 클릭 시 굵은 teal형태로 강조
                        primaryColor: Colors.teal,
                        inputDecorationTheme: const InputDecorationTheme(
                            labelStyle:
                                TextStyle(color: Colors.teal, fontSize: 15))),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(children: [
                        const TextField(
                          decoration:
                              InputDecoration(labelText: 'Enter "yeji"'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const TextField(
                          decoration:
                              InputDecoration(labelText: 'Enter Password'),
                          keyboardType: TextInputType.text,
                          // obscureText: true - 패스워드는 보안이 필요하므로 문자가 표시 되지 않게 해준다.
                          obscureText: true,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 30,
                                )),
                          ],
                        )
                      ]),
                    )))
          ],
        ),
      ),
    );
  }
}
