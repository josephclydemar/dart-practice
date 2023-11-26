enum Day {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}
enum Month {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}
enum Sex {
  Male,
  Female
}

enum HttpResponseStatusCode {
  GoodRequest,
  Redirect,
  BadRequest,
  ServerError
}

enum ProcessState {
  New,
  Ready,
  Running,
  Waiting,
  Terminated
}

void main() {
  print(Day.values);
  print(Month.values);
  print(Sex.values);
  print(HttpResponseStatusCode.values);
  print(ProcessState.values);
}