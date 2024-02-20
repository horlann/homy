// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

mixin CountdownTimer on WidgetsBindingObserver {
  int _countdownSeconds = 60;
  Timer? _timer;
  final timerHandler = TimerDifferenceHandler();
  bool onPausedCalled = false;

  void onTick(int value) {}

  void onFinished() {}

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.inactive) {
      pause();
    } else if (state == AppLifecycleState.resumed) {
      resume();
    }
  }

  void startTimer(int countdownSeconds) {
    _countdownSeconds = countdownSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _countdownSeconds--;

      onTick(_countdownSeconds);

      if (_countdownSeconds <= 0) {
        stopTimer();

        onFinished();
      }
    });
  }

  void pause() {
    if (onPausedCalled) {
      return;
    }
    onPausedCalled = true;
    timerHandler.setEndingTime(_countdownSeconds);
    stopTimer();
  }

  void resume() {
    if (!onPausedCalled) {
      return;
    }
    if (timerHandler.remainingSeconds > 0) {
      _countdownSeconds = timerHandler.remainingSeconds;
      startTimer(_countdownSeconds);
    } else {
      stopTimer();
      onTick(_countdownSeconds);
    }
    onPausedCalled = false;
  }

  void stopTimer() {
    _timer?.cancel();
    _countdownSeconds = 0;
  }
}

class TimerDifferenceHandler {
  static late DateTime endingTime;

  int get remainingSeconds {
    final dateTimeNow = DateTime.now();
    final remainingTime = endingTime.difference(dateTimeNow);

    return remainingTime.inSeconds;
  }

  void setEndingTime(int durationToEnd) {
    final dateTimeNow = DateTime.now();

    endingTime = dateTimeNow.add(
      Duration(
        seconds: durationToEnd,
      ),
    );
  }
}
