import 'package:flutter/foundation.dart';

class DHMS{
  String day;
  String hour;
  String min;
  String sec;
  DHMS({this.day = "00", this.hour = "00", this.min = "00", this.sec = "00"});
}

class TimeHelper {

  DHMS secToDHMS(int sec){
    DHMS dhms = DHMS();
    dhms.day = (sec ~/ (24 * 60 * 60 )).toString().padLeft(2,'0');
    sec = sec % (24 * 60 * 60);
    dhms.hour = (sec ~/ (60 * 60)).toString().padLeft(2,'0');
    sec = sec % (60 * 60);
    dhms.min = (sec ~/ 60).toString().padLeft(2,'0');
    sec = sec % 60;
    dhms.sec = sec.toString().padLeft(2,'0');
    return dhms;
  }

  int diffInSeconds(DateTime dt){
    return dt.difference(DateTime.now()).inSeconds;
  }

  DHMS diffInDHMS(DateTime dt){
    DHMS dhms = DHMS();
    int n = dt.difference(DateTime.now()).inSeconds;
    dhms.day = (n ~/ (24 * 60 * 60 )).toString().padLeft(2,'0');
    n = n % (24 * 60 * 60);
    dhms.hour = (n ~/ (60 * 60)).toString().padLeft(2,'0');
    n = n % (60 * 60);
    dhms.min = (n ~/ 60).toString().padLeft(2,'0');
    n = n % 60;
    dhms.sec = n.toString().padLeft(2,'0');
    return dhms;
  }

  String convertHour(int time) {
    String hour = ((time / (60 * 60)) % 60).floor().toString().padLeft(2, '0');
    return hour;
  }
  String convertDay(int time) {
    String hour = ((time / (60 * 60 * 24)) % 60).floor().toString().padLeft(2, '0');
    return hour;
  }

  String convertMin(int time) {
    String min = ((time / 60) % 60).floor().toString().padLeft(2, '0');
    return min;
  }

  String convertSec(int time) {
    // String sec = (time % 60).floor().toString();
    String sec = (time % 60).floor().toString().padLeft(2, '0');
    return sec;
  }

  //New Methods :D
  ///This method is for calculate total time different between two date and return in seconds
  int getTimeDiff({int time = 0,bool wantInSec = false,bool minusTime = false}) {
    if (kDebugMode) {
      // print('check diff sec sss $time');
    }
    if (time == 0) {
      if (kDebugMode) {
        // print('check diff sec null');
      }
      return 0;
    } else {
      DateTime date1 = DateTime.now();
      DateTime date2;
      if(minusTime){
        date2 = DateTime.fromMillisecondsSinceEpoch(time).subtract(const Duration(hours: 5,minutes: 30));
      }else{
        date2 = DateTime.fromMillisecondsSinceEpoch(time);
      }
      int sec = date1.difference(date2).inSeconds;

      if (kDebugMode) {
        // print('check different in sec $sec');
      }

      if(wantInSec){
        return sec;
      }else{
        if (kDebugMode) {
          // print('check different in sec mili ${sec * 1000}');
        }
        return sec * 1000;
      }
    }
  }


  int convertToLocalDateTime(String dt){
    var dTime = DateTime.parse(dt);
    var d = DateTime.utc(dTime.year,dTime.month,dTime.day,dTime.hour,dTime.minute,dTime.second);
    var fd = d.toLocal();
    DateTime date1 = DateTime.now();
    int sec = date1.difference(fd).inSeconds;
    return sec;
  }

  int getTimer(bool isEx) {
    // if (isEx) {
    //   return locator<AppPrefs>().startExTimer.getValue();
    // } else {
    //   return locator<AppPrefs>().globalTimer.getValue();
    // }
    return 0;
  }

  String getLiveClassDuration() {
    // int prefDate = locator<AppPrefs>().liveClassTimerDate.getValue();
    // var localDate = DateTime.fromMillisecondsSinceEpoch(prefDate);
    // var nowDtae = DateTime.now();
    // var differentInSecond = nowDtae.difference(localDate).inSeconds;
    // String hour = convertHour(differentInSecond);
    // String min = convertMin(differentInSecond);
    // String sec = convertSec(differentInSecond);
    // return '$hour:$min:$sec';
    return '0';
  }

  bool isSameTime(String sheduleTime) {
    // String tDate = Helper.formatDate2(DateTime.now().toIso8601String());
    // print('isSame date printed --$sheduleTime  ${tDate == sheduleTime}');
    // return tDate == sheduleTime;
    return false;
  }

  bool isPreviousDate() {
    // bool isWorkoutOn = locator<AppPrefs>().exerciseOn.getValue();
    // if (isWorkoutOn) {
    //   var format = new DateFormat('dd-MMM-yyyy');
    //   print('workout timer status -- workout is on');
    //   int wTimerDate = locator<AppPrefs>().globalTimer.getValue();
    //   print('workout timer status --- date value $wTimerDate');
    //   var date = new DateTime.fromMillisecondsSinceEpoch(wTimerDate);
    //   String pFormatDate = format.format(date);
    //   print('workout timer status --- date value pDate $pFormatDate');
    //
    //   DateTime cDate = DateTime.now();
    //   String cFormatDate = format.format(cDate);
    //   print('workout timer status --- date value tDate $cFormatDate');
    //
    //   if (cFormatDate != pFormatDate) {
    //     locator<AppPrefs>().exerciseUid.setValue('');
    //     locator<AppPrefs>().globalTimer.setValue(0);
    //     locator<AppPrefs>().startExTimer.setValue(0);
    //     locator<AppPrefs>().exercisePause.setValue(false);
    //     locator<AppPrefs>().exerciseOn.setValue(false);
    //     return true;
    //   } else {
    //     return false;
    //   }
    // } else {
    //   //Workout not on
    //   print('workout timer status -- workout is not on');
    //   return false;
    // }
    //
    return false;
  }

  void setTimeInLocal({required int counter, bool isEx =  true}) {
    // int currentDate = DateTime.now()
    //     .subtract(Duration(
    //     hours: int.parse(convertHour(counter)),
    //     seconds: int.parse(convertSec(counter)),
    //     minutes: int.parse(convertMin(counter))))
    //     .millisecondsSinceEpoch;
    //
    // if (isEx) {
    //   locator<AppPrefs>().startExTimer.setValue(currentDate);
    // } else {
    //   locator<AppPrefs>().globalTimer.setValue(currentDate);
    // }
  }

  int getPreviousTimerFromLocal(bool isEx) {
    DateTime date1 = DateTime.now();
    DateTime date2;
    if (getTimer(isEx) == 0) {
      return 0;
    } else {
      date2 = DateTime.fromMillisecondsSinceEpoch(getTimer(isEx));
      return date1.difference(date2).inSeconds;
    }
  }

  int convertMil(bool isEx) {
    if (kDebugMode) {
      print('check null * ---');
    }

    int d1 = getPreviousTimerFromLocal(isEx) * 1000;

    if (kDebugMode) {
      print('check null * --- $d1');
    }
    return d1;
  }

  bool getInProgressItemUid({required String itemUid}) {
    // String value = locator<AppPrefs>().inProgressEx.getValue();
    // return value == itemUid;
    return false;
  }

  void setExTimeToZero() async {
    // await locator<AppPrefs>().startExTimer.setValue(0);
  }

  bool hasCommaInReps({required String reps}) {
    if (reps.isEmpty) {
      return false;
    } else {
      return reps.contains(',');
    }
  }

  List<String> convertStringToIntList({required String reps}) {
    bool hasComma = hasCommaInReps(reps: reps);

    if (hasComma) {
      List<String> dataList = reps.split(',');
      dataList.remove('');
      return dataList;
    } else {
      if (reps.isEmpty) {
        return [];
      } else {
        return [reps];
      }
    }
  }


}

final timeHelper = TimeHelper();