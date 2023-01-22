import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FormScreen(title: 'Flutter Form Validation'),
    );
  }
}

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
//                      hintText: 'Hint Text',
                        labelText: '보내는 사람',
                      ),
                    ),

                    Padding(padding:  const EdgeInsets.fromLTRB(0, 0, 0, 20),),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '보내는 사람 연락처',
                      ),
                    ),

                    Padding(padding:  const EdgeInsets.fromLTRB(0, 0, 0, 20),),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '받는 사람',
                      ),
                    ),

                    Padding(padding:  const EdgeInsets.fromLTRB(0, 0, 0, 20),),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '받는 사람 주소',
                      ),
                    ),

                    Padding(padding:  const EdgeInsets.fromLTRB(0, 0, 0, 20),),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '요구 사항 ...',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(06)),
                        ),
                      ),
                    ),


                  ],
                )),
          ],
        ),
      ),
    );
  }
}