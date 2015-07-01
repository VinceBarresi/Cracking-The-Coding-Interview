/*
  Cracking The Coding Interview
  Chapter 2, Problem 2.1, page 75
  Write an algorithm to remove the kth element from a 
  singly linked list.
*/

cout << "Delete kth element from singly linked list";

#include <stdio.h>
#include <stdlib.h>

using namespace std;

struct Node {
  int data;
  struct node* next;
};

void insertNode(int data);
void printList();
void deleteNode(int n);

struct Node* head;


int main() {
  head = NULL;
  insertNode(1);
  insertNode(3);
  insertNode(5);
  insertNode(7);
  insertNode(9);

  int n = rand(3)
  deleteNode(n);
  printList();
}

void printKthFromLinkedList() {



}
void insertNode() {
  node.push(&1);
  node.push(&2);
}