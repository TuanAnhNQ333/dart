void main() {
  List<int> numbers = [10, 5, 7, 1, 2, 9, 4, 3, 6, 8];
// vi tri cua phan tu lon thu 3
  List<int> sortedNumbers = List.from(numbers)..sort((a, b) => b.compareTo(a));
  int thirdLargest = sortedNumbers[2];
  int thirdLargestIndex = numbers.indexOf(thirdLargest);
  print(thirdLargestIndex);

// loc ra phan tu > 4
  List<int> filteredNumbers = numbers.where((num) => num > 4).toList();
  print(filteredNumbers);

// thay the so le lon nhat bang tong cua danh sach
  int sum = numbers.reduce((a, b) => a + b);
  int maxOdd =
      numbers.where((num) => num % 2 != 0).reduce((a, b) => a > b ? a : b);
  numbers[numbers.indexOf(maxOdd)] = sum;
  print(numbers);
}
/*
Example
Input: [10,5,7,1,2,9,4,3,6,8]
Output:
9
[10,5,7,9,6,8]
[10,5,7,1,2,55,4,3,6,8]
*/