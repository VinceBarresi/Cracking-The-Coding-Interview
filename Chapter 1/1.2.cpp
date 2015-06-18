/*
  Cracking The Coding Interview
  Chapter 1, Problem 1.2, page 73
  Implement a function void reverse(char* str) in 
  C or C++ which reverses a null-terminated string.
*/

#include <iostream>
#include <string>

using namespace std;

char* str = "null-terminated-string\0";

void reverse(string str);

int main(void)
{
  cout << "Reverse a null-terminated string";

  reverse(str);

  return 0;
}

void reverse(char* str) {
  string newString = str;
  int indeces = newString.length() - 1;
  cout << indeces;
  string stringArray[24]; 
  string reverseString = ("");
  
  for (int i = 0; i < newString.length(); i++) {
    stringArray[i] = newString.at(i);
  }
  
  for (int j = 0; j < newString.length(); j++) {
    reverseString += stringArray[indeces - j];
  }
  cout << reverseString;
}
