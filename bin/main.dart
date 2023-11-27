import 'model/modelling.dart';
import 'service/network_service.dart';

void main(List<String> args) async {
  String data = await NetworkService.getData(NetworkService.apiProduct);

  List<University> list = fromJsonToObject(data);
  for (var i = 0; i < list.length; i++) {
    // print("${list[i].instructors[i].email} ${list[i].schedule.days}");
    print("${list[i].instructors[0].email} ${list[i].schedule.days}");
  }
}
