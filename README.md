# HACKATHON-REPO---DART

**COMPLETE THE TASKS BELOW**

**Palindrome Checker**
Task: Write a Dart function that checks whether a given string is a palindrome. The function should ignore spaces, punctuation, and be case-insensitive.
Bonus Points: Extend the function to check palindrome properties for numeric inputs as well.
Objective: Test string manipulation, logic implementation, and handling edge cases.
 
**Sorting Algorithm Implementation**
Task: Write a Dart function that implements a sorting algorithm (e.g., Quick Sort, Merge Sort, or Bubble Sort) to sort a list of integers. The function should return the sorted list.
Bonus Points: Implement two different sorting algorithms and compare their performance in terms of execution time.
Objective: Test understanding of algorithmic complexity and the ability to implement and optimize sorting algorithms.

**Basic Calculator Function**
Task: Implement a Dart function that takes two numbers and a mathematical operator (+, -, *, /, %) as input and returns the calculated result. The function should handle basic arithmetic operations.
Bonus Points: Extend the function to handle multi-step operations and include error handling for division by zero.
Objective: Evaluate proficiency in conditional statements, arithmetic operations, and error handling.

**SUBMISSION**
Kindly submit your repositories here https://forms.gle/SSRgzRJJvGcHK6ZY6

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

