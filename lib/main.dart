import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'showcase/showcase_keys.dart';
import 'showcase/showcase_descriptions.dart';
import 'showcase/showcase_helper.dart';
import 'showcase/showcase_mixin.dart';
import 'showcase/showcase_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowcaseView 예제',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowCaseWidget(
        builder: (context) => const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with ShowcaseMixin {
  final GlobalKey _fullScreenKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    startTutorial();
  }

  void startTutorial() {
    startShowcase(
      ShowcasePage.home,
      ShowcaseKeys.home.values.toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShowcaseWrapper(
          type: HomeShowcase.title,
          child: const Text('ShowcaseView 예제'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              ShowcaseHelper.resetAllShowcases().then((_) {
                startTutorial();
              });
            },
            tooltip: '튜토리얼 다시 보기',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowcaseWrapper(
              type: HomeShowcase.button,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('첫 번째 버튼이 눌렸습니다!')),
                  );
                },
                child: const Text('첫 번째 버튼'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: ShowcaseWrapper(
        type: HomeShowcase.fab,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
