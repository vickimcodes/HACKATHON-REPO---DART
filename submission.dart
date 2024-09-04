
/* This is Palindrome Checker Task: */


bool isPalindrome(String input) {
  final cleanedInput = input.toLowerCase().replaceAll(RegExp(r'[^\w]'), '');
  final reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}

/* this is Sorting Algorithm Implementation Task */

List<int> quickSort(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers;
  }

  final pivot = numbers[0];
  final left = numbers.where((element) => element < pivot).toList();
  final right = numbers.where((element) => element > pivot).toList();

  return [...quickSort(left), pivot, ...quickSort(right)];
}

/* This is Basic Calculator Function */

double calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError('Division by zero is not allowed.');
      }
      return num1 / num2;
    case '%':
      return num1 % num2;
    default:
      throw ArgumentError('Invalid operator: $operator');
  }
}
