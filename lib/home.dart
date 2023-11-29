import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var indexProvider = StateProvider<int>((ref) => 0);

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = TextStyle(fontSize: 44, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod navigation'),
      ),
      body: IndexedStack(
        index: ref.watch(indexProvider),
        children: [
          Text(
            'Home',
            style: textStyle,
          ),
          Text(
            'Page 2',
            style: textStyle,
          ),
          Text(
            'Page 3',
            style: textStyle,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            ref.read(indexProvider.state).state = index;
          },
          currentIndex: ref.watch(indexProvider),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Page 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Page 2'),
          ]),
    );
  }
}
