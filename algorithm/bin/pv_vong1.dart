void main() {
  List<int> arrNumber = [1, 2, 3, 4, 5];
  int sum = 0;
  List<int> arrChan = [];
  List<int> arrLe = [];
  int min = arrNumber.reduce((first, next) => first < next ? first : next);
  int max = arrNumber.reduce((first, next) => first > next ? first : next);
  for (int i in arrNumber) {
    sum += i;
    if (i % 2 == 0) {
      arrChan.add(i);
    }
    if (i % 2 != 0) {
      arrLe.add(i);
    }
  }
  print('${sum - max}, ${sum - min}');
  print(arrChan);
  print(arrLe);
}
