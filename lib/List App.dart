import 'package:flutter/material.dart';
void main() {
  runApp(TodoListApp());
}
class Task {
  String title;
  bool isCompleted;
  Task(this.title, this.isCompleted);
}

class TodoListApp extends StatefulWidget {
  @override
  _TodoListAppState createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  List<Task> tasks = [];
  bool isLoading = false;

  final GlobalKey<AnimatedListState> _animatedListKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ToDo List')),
        body: AnimatedList(
          key: _animatedListKey,
          initialItemCount: tasks.length,
          itemBuilder: (context, index, animation) {
            return _buildTaskItem(tasks[index], animation, index);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addTask,
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildTaskItem(Task task, Animation<double> animation, int index) {
    return SizeTransition(
        sizeFactor: animation,
        child: Card(
          color: Colors.white10,
          child: ListTile(
            title: Text(task.title),
            onLongPress: () => _removeTask(index),
          ),
        ));
  }

  void _addTask() async {
    Task newTask = Task('New Task ${tasks.length + 1}', false);
    tasks.add(newTask);
    _animatedListKey.currentState!.insertItem(tasks.length - 1);
  }

  void _removeTask(int index) async {
    _animatedListKey.currentState!.removeItem(index,
            (context, animation) => _buildTaskItem(tasks[index], animation, index));
    tasks.removeAt(index);
  }
}