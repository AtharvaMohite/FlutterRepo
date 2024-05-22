import 'package:flutter/material.dart';

class palindrome extends StatefulWidget {
  const palindrome({super.key});
  State<palindrome> createState() => _palindromeState();
}

class _palindromeState extends State<palindrome> {
  int armstrongCount = 0;
  int palindromeCount = 0;
  int strongCount = 0;
  int paliindex = 0;
  int armindex = 0;
  int strongInd = 0;
  final List<int> nums = [121, 111, 1234, 121];
  final List<int> armsnum = [123, 370, 555, 371, 153];
  final List<int> strongNum = [123, 145];

  void palicount() {
    paliindex++;
    if (paliindex == 1) {
      setState(() {
        for (int i = 0; i < nums.length; i++) {
          int rev = 0;

          int num = nums[i];
          while (num > 0) {
            int rem = num % 10;
            rev = rev * 10 + rem;
            num = num ~/ 10;
          }

          if (rev == nums[i]) {
            palindromeCount++;
          }
        }
      });
    }
  }

  void Reset() {
    setState(() {
      paliindex = 0;
      armindex = 0;
      strongCount = 0;
      strongInd = 0;
      palindromeCount = 0;

      armstrongCount = 0;
    });
  }

  void ArmsCount() {
    armindex++;
    if (armindex == 1) {
      setState(() {
        for (int i = 0; i < armsnum.length; i++) {
          int number = armsnum[i];
          int arm = 0;
          while (number > 0) {
            int rem = number % 10;
            arm += rem * rem * rem;
            number = number ~/ 10;
          }

          if (arm == armsnum[i]) {
            armstrongCount++;
          }
        }
      });
    }
  }

  int factoria(int n) {
    int fact = 1;
    for (int i = 1; i <= n; i++) {
      fact = fact * i;
    }
    return fact;
  }

  void strong() {
    setState(() {
      for (int i = 0; i < strongNum.length; i++) {
        int n = strongNum[i];
        int sum = 0;
        while (n > 0) {
          int rem = n % 10;
          sum += factoria(rem);
          n = n ~/ 10;
        }
        if (sum == strongNum[i]) {
          strongCount++;
        }
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignments"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: palicount, child: const Text("Palindrom Count")),
            const SizedBox(
              height: 20,
            ),
            Text("Number of Palindroms = $palindromeCount"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: ArmsCount, child: const Text("Armstrong count")),
            const SizedBox(
              height: 20,
            ),
            Text("Number of Armstrong Numbers = $armstrongCount"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: strong, child: const Text("Strong Number")),
            const SizedBox(
              height: 20,
            ),
            Text("Number of Strong Number : $strongCount"),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: Reset, child: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
