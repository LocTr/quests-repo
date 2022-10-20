import 'package:quests_api/apis/quests_api.dart';
import 'package:quests_api/models/quest.dart';

class TasksRepo {
  const TasksRepo({required QuestsApi questsApi}) : _questsApi = questsApi;

  final QuestsApi _questsApi;

  Stream<List<Quest>> getQuests() => _questsApi.getQuestsStream();

  Future<List<Quest>> getQuestsFuture() => _questsApi.getQuests();

  Future<void> saveQuest(Quest quest) => _questsApi.saveQuest(quest);

  Future<void> deleteTask(String id) => _questsApi.deleteQuest(id);

  // Future<void> deleteAll() => _questsApi.de();

}
