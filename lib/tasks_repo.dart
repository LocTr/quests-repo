library tasks_repo;

import 'package:task_api/models/task.dart';
import 'package:task_api/task_api.dart';

/// A Calculator.
class TasksRepo {
  const TasksRepo({required TaskApi taskApi}) : _taskApi = taskApi;

  final TaskApi _taskApi;

  Stream<List<Task>> getTasks() => _taskApi.getTasksStream();

  Future<void> saveTask(Task task) => _taskApi.saveTask(task);

  Future<void> deleteTask(String id) => _taskApi.deleteTask(id);
}
