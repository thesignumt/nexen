#include <iostream>
#include <ostream>
#include <string>

int main(int argc, char *argv[]) {
  if (argc > 1) {
    std::cout << "have args, argv[0]: " << argv[0] << std::endl;
  } else {
    std::string input;
    while (true) {
      std::cout << "> ";
      std::getline(std::cin, input);

      if (input == "exit") {
        break;
      }

      std::cout << "got input";
    }
  }
  return 0;
}
