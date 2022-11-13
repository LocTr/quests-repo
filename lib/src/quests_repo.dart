import 'package:quests_api/apis/goals_api.dart';
import 'package:quests_api/apis/quests_api.dart';
import 'package:quests_api/models/goal.dart';
import 'package:quests_api/models/quest.dart';

class QuestsRepo {
  const QuestsRepo({required QuestsApi questsApi, required GoalsApi goalsApi})
      : _questsApi = questsApi,
        _goalsApi = goalsApi;

  final QuestsApi _questsApi;
  final GoalsApi _goalsApi;

  //Quests
  Stream<List<Quest>> getQuests() => _questsApi.getQuestsStream();

  Future<List<Quest>> getQuestsFuture() => _questsApi.getQuests();

  Future<void> saveQuest(Quest quest) => _questsApi.saveQuest(quest);

  Future<void> deleteQuest(String id) => _questsApi.deleteQuest(id);

  Future<void> deleteAllQuest() => _questsApi.deleteAllQuests();

  //Goals
  Stream<List<Goal>> getGoals() => _goalsApi.getGoalsStream();

  Future<void> saveGoals(Goal goal) => _goalsApi.saveGoal(goal);

  Future<void> deleteGoals(String id) => _goalsApi.deleteGoal(id);

  Future<void> deleteAllGoal() => _goalsApi.deleteAllGoals();
}
