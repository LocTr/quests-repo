import 'package:quests_api/apis/quests_api.dart';
import 'package:quests_api/models/quest.dart';

class QuestsRepo {
  const QuestsRepo({required QuestsApi questsApi}) : _questsApi = questsApi;

  final QuestsApi _questsApi;

  Stream<List<Quest>> getQuests() => _questsApi.getQuestsStream();

  Future<List<Quest>> getQuestsFuture() => _questsApi.getQuests();

  Future<void> saveQuest(Quest quest) => _questsApi.saveQuest(quest);

  Future<void> deleteQuest(String id) => _questsApi.deleteQuest(id);

  Future<void> deleteAll() => _questsApi.deleteAllQuests();
}
