enum TaskType
{
  Move,
  PickAndPlace,
}
class Task
{
  String id;
  TaskType type;
  Task(this.id, this.type);
}

class MoveTask extends Task
{
  String id;
  String moveTo;
  MoveTask(this.id, this.moveTo) : super(id, TaskType.Move);
}

class PickAndPlaceTask extends Task
{
  String id;
  String pickAt;
  String placeAt;
  PickAndPlaceTask(this.id, this.pickAt, this.placeAt): super(id, TaskType.PickAndPlace);
}