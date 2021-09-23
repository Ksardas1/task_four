import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // Генирируем список из десяти чисел
    // где каждое следующее число на 1 больше предыдущего
    List<int> numbers = List.generate(10, (int index) => index++);

    return Scaffold(
      body: ListView.separated( // Создаем ListView с разделителем

        // Количество строк равно количеству элементов в списке
        itemCount: numbers.length,

        // Выводим все элементы на ListView
        itemBuilder: (BuildContext context, int index) {
          return Text(numbers[index].toString());
        },

        // Между строками добавляется разделитель:
        separatorBuilder: (BuildContext context, int index) => const Divider(),

      ),
    );
  }
}