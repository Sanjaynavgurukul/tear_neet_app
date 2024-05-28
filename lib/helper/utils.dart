import 'package:tyarineetki/model/User.dart';
import 'package:tyarineetki/model/subject_subscription_model.dart';

class Utils{
  String? userId;
  CurrentUser? user;
  SubjectSubscription? subjectSubscription;

  bool purchased(){
    if (subjectSubscription == null) {
      return false;
    }

    if (subjectSubscription!.data == null) {
      return false;
    }

    if (util.subjectSubscription!.data!.isEmpty) {
      return false;
    }

   SubjectSubscriptionData s = subjectSubscription!.data![0];
    if (s.expired??true) {
      return false;
    }
    return true;
  }
}

final util = Utils();