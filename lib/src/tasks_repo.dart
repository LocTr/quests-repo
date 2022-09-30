import 'package:task_api/models/progress_point.dart';
import 'package:task_api/models/task.dart';
import 'package:task_api/progress_point_api.dart';
import 'package:task_api/task_api.dart';

class TasksRepo {
  const TasksRepo(
      {required TaskApi taskApi, required ProgressPointApi progressApi})
      : _taskApi = taskApi,
        _progressApi = progressApi;

  final TaskApi _taskApi;
  final ProgressPointApi _progressApi;

  Stream<List<Task>> getTasks() => _taskApi.getTasksStream();

  Future<List<Task>> getTasksFuture() => _taskApi.getTasks();

  Future<void> saveTask(Task task) => _taskApi.saveTask(task);

  Future<void> deleteTask(String id) => _taskApi.deleteTask(id);

  Future<void> deleteAll() => _taskApi.deleteAll();

  Future<List<ProgressPoint>> getPoints() => _progressApi.getPoints();

  Future<void> saveProgress(ProgressPoint point) =>
      _progressApi.saveProgress(point);
}
