void main() {
  // getMinValue([1, 2, 3, 6, 4, 100, 9, 7, 5, 10, 99, 70, 66]);

  List<int> nums = [2, 3, 6, 4, 100, 9, 7, 5, 10, 1];
  // use the dart's built in method for sorting the list
  nums.sort((a, b) => a - b);
  // the sort method here mutates the List so it will be rearranged according to the sorting we made.
  print(nums[0]);
}

void getMinValue(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        // compare to check if a number is greater than the next one.
        // store the 1st number in a vatiable
        int temporary = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temporary;
      }
    }
  }
  print(numbers[0]);
}
