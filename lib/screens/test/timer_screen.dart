import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late Timer _timer;
  late DateTime _startTime;
  late DateTime _endTime;
  int _secondsRemaining = 180; // One hour in seconds

  @override
  void initState() {
    super.initState();
    _startTime = DateTime.now();
    _endTime = _startTime.add(const Duration(minutes: 5));
    _loadTimerState();
  }

  void _saveTimerState() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('startTime', _startTime.toIso8601String());
    pref.setInt('secondsRemaining', _secondsRemaining);
  }

  Future<void> _loadTimerState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('startTime')) {
      DateTime savedStartTime = DateTime.parse(prefs.getString('startTime')!);
      int savedSeconds = prefs.getInt('secondsRemaining') ?? 0;
      Duration elapsed = DateTime.now().difference(savedStartTime);
      if (elapsed.inSeconds > 3600) {
        showDialogAfterCompletionOfTime();
      } else {
        _startTime = savedStartTime;
        _endTime = _startTime.add(const Duration(minutes: 5));
        setState(() {
          _secondsRemaining = savedSeconds;
          startTimer();
        });
      }
    } else {
      _startTime = DateTime.now();
      _endTime = _startTime.add(const Duration(minutes: 5));
      startTimer();
    }
  }

  Future<void> showDialogAfterCompletionOfTime() async {
    await Future.delayed(
        Duration.zero); // Delay to ensure the build context is ready
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Time Over'),
          content: const Text('Your time is up!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
          _saveTimerState();
        } else {
          timer.cancel();
          // Show dialog when timer completes
          showDialogAfterCompletionOfTime();
        }
      });
    });
  }

  String _formatTime(DateTime time) {
    return '${time.hour}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return _secondsRemaining <= 0;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Timer Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Start Time: ${_formatTime(_startTime)}',
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                'End Time: ${_formatTime(_endTime)}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(
                  value: _secondsRemaining / 3600,
                  strokeWidth: 15,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Time Remaining: ${_secondsRemaining ~/ 60}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
