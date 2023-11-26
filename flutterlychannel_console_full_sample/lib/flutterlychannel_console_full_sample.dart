int calculate() {
  return 6 * 7;
}

int addNum(List<int> args) {
  int res = 0;
  for(int i=0; i<args.length; i++) {
    res += args[i];
  }
  return res;
}

int minusNum(List<int> args) {
  int res = args[0];
  for(int i=1; i<args.length; i++) {
    res -= args[i];
  }
  return res + 1;
}

int multNum(List<int> args) {
  int res = 1;
  for(int i=0; i<args.length; i++) {
    res *= args[i];
  }
  return res;
}

