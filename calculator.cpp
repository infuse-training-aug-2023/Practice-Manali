#include <iostream>

class Calculator {
public:
    int add(int a, int b) {
        return a + b;
    }
    int subract(int a, int b) {
        return a - b;
    }
};

int main() {
    Calculator calc;

    int num1, num2;
    std::cout << "Enter the first number: ";
    std::cin >> num1;

    std::cout << "Enter the second number: ";
    std::cin >> num2;

    int result = calc.add(num1, num2);
    std::cout << "The sum is: " << result << std::endl;

    result = calc.add(num1, num2);
    std::cout << "The sum is: " << result << std::endl;

    return 0;
}
