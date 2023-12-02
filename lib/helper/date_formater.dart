import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DateFormatter {
  const DateFormatter(this.context);

  final BuildContext context;

  String getChatHeaderDateTimeString({required DateTime localDateTime}) {
    return _verboseDateTimeRepresentation(localDateTime: localDateTime);
  }

  String getContactListDateTimeString({required DateTime localDateTime}) {
    return _verboseDateTimeRepresentation(
        localDateTime: localDateTime, contactList: true);
  }

  String getReminderDateTimeString({required DateTime localDateTime}) {
    final time = DateFormat('hh:mm a').format(localDateTime);
    String date =
        '${DateFormat("MMM dd, yyyy").format(localDateTime)}, at $time.';

    return date;
  }

  String getReminderDateString({required DateTime localDateTime}){
    String date = DateFormat("MMM dd, yyyy").format(localDateTime);
    
    return date;
  }

  String getFormattedTime({required DateTime localDateTime}) {
    final time = DateFormat(
      'hh:mm a',
      Localizations.localeOf(context).toLanguageTag(),
    ).format(localDateTime);

    return time;
  }

  String _verboseDateTimeRepresentation({
    required DateTime localDateTime,
    bool contactList = false,
  }) {
    final now = DateTime.now();

    if (localDateTime.day == now.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return !contactList
          ? "Today"
          : getFormattedTime(localDateTime: localDateTime);
    }

    final yesterday = now.subtract(const Duration(days: 1));

    if (localDateTime.day == yesterday.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return "Yesterday";
    }

    if (now.difference(localDateTime).inDays < 4) {
      String weekday =
          DateFormat('EEEE', Localizations.localeOf(context).toLanguageTag())
              .format(localDateTime);

      return weekday;
    }

    return contactList
        ? DateFormat('dd/MM/yy').format(localDateTime)
        : DateFormat('MMMM d, y').format(localDateTime);
  }
}
