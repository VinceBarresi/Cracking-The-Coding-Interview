/*
  Cracking The Coding Interview
  Chapter 1, Problem 1.1, page 73
  (a)Implement an algorithm to determine if a string has all unique characters.
  (b)What if you cannot use additional data structures?
*/

import java.util.HashMap;

// (a)
// O(n)
public class Chapter1Problem1 {
  public Boolean stringHasUniqueCharacters(String string) {
    HashMap<Character, Integer> charFreq = new HashMap<Character, Integer>();
    boolean unique = true;
    int count = 1;
    for (char c : string.toCharArray()) {  
      charFreq.put(c, count);
      if(charFreq.containsKey(c)) {
        unique = false;
        break;
      }
    }
    return unique;
  }
}


