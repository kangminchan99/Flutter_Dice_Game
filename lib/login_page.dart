import 'package:flutter/material.dart';

import 'dice_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // value키를 사용해보기위해 텍스트 필드 하나를 삭제할 수 있는 기능 추가
  bool emailField = true;

  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

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
        backgroundColor: Colors.white,
      ),
      // snack bar에 context를 전달해주기 위해 SingleChildScrollView를 빌더 위젯으로 감싸준다.
      body: Builder(builder: (context) {
        // GestureDetector - 사용자의 클릭을 감지
        return GestureDetector(
          // 텍스트 필드에서 정보 입력 후 화면의 빈공간을 클릭할 시 키보드가 사라진다.
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
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
                                labelStyle: TextStyle(
                                    color: Colors.teal, fontSize: 15))),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(children: [
                            if (emailField)
                              TextField(
                                key: ValueKey(1),
                                // controller: idController,
                                decoration: const InputDecoration(
                                    labelText: 'Enter "yeji"'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            TextField(
                              key: ValueKey(2),
                              // controller: pwController,
                              decoration: const InputDecoration(
                                  labelText: 'Enter Password'),
                              keyboardType: TextInputType.text,
                              // obscureText: true - 패스워드는 보안이 필요하므로 문자가 표시 되지 않게 해준다.
                              obscureText: false,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        emailField = false;
                                      });
                                      // if (idController.text == 'yeji' &&
                                      //     pwController.text == '1234') {
                                      //   Navigator.push(
                                      //       context,
                                      //       MaterialPageRoute(
                                      //           builder:
                                      //               (BuildContext context) =>
                                      //                   const DicePage()));
                                      // } else if (idController.text == 'yeji' &&
                                      //     pwController.text != '1234') {
                                      //   showSnackBar2(context);
                                      // } else if (idController.text != 'yeji' &&
                                      //     pwController.text == '1234') {
                                      //   showSnackBar3(context);
                                      // } else {
                                      //   showSnackBar(context);
                                      // }
                                    },
                                    icon: const Icon(
                                      // Icons.arrow_forward,
                                      Icons.visibility_off_outlined,
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
      }),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text('로그인 정보를 다시 확인하세요', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text('비밀번호가 일치하지 않습니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text('yeji의 철자를 확인하세요', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
