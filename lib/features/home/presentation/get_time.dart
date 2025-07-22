enum TimeUnit { months, weeks, days, minutes, seconds }

class TimeUntil {
  final int months, weeks, days, minutes, seconds;
  const TimeUntil({
    required this.months,
    required this.weeks,
    required this.days,
    required this.minutes,
    required this.seconds,
  });
}

TimeUntil timeUntilDate(DateTime target, {DateTime? from}) {
  final now = from ?? DateTime.now();
  if (!target.isAfter(now)) {
    return const TimeUntil(months: 0, weeks: 0, days: 0, minutes: 0, seconds: 0);
  }

  int months = (target.year - now.year) * 12 + (target.month - now.month);
  final adjusted = DateTime(now.year, now.month + months, now.day, now.hour,
      now.minute, now.second, now.millisecond, now.microsecond);
  if (adjusted.isAfter(target)) months--;

  final afterMonths = DateTime(now.year, now.month + months, now.day, now.hour,
      now.minute, now.second, now.millisecond, now.microsecond);

  final remainder = target.difference(afterMonths);
  final weeks = remainder.inDays ~/ 7;
  final days = remainder.inDays % 7;

  return TimeUntil(
    months: months,
    weeks: weeks,
    days: days,
    minutes: remainder.inMinutes,
    seconds: remainder.inSeconds,
  );
}

String prettyTimeUntil(TimeUntil t) {
  String part(String label, int v) => v == 0 ? '' : '$v $label${v == 1 ? '' : 's'}';
  final pieces = [
    part('month', t.months),
    part('week', t.weeks),
    part('day', t.days),
  ].where((e) => e.isNotEmpty).toList();
  return pieces.join(', ');
}

