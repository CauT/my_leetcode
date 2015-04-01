#include "stdio.h"
#include "stdlib.h"

// Definition for singly-linked list.
struct ListNode {
    int val;
    struct ListNode *next;
};

struct ListNode *insertionSortList(struct ListNode *head) {
    struct ListNode* ptr = head->next;
    struct ListNode* ptr_prev = head;
    struct ListNode* tmp;
    struct ListNode* tmp_prev;
    while (ptr != NULL) {
        tmp = head;
        tmp_prev = NULL;
        while (tmp->val < ptr->val) {
            tmp_prev = tmp;
            tmp = tmp->next;
        }
        if (tmp_prev != NULL)
            tmp_prev->next = ptr;
        else
            tmp_prev = head;
        ptr->next = tmp;
        ptr_prev->next = ptr->next;
        ptr_prev = ptr;
        ptr = ptr->next;
    }
    return head;
}

int main() {
    struct ListNode* head = malloc(sizeof(struct ListNode));
    head->val = 3;
    head->next = malloc(sizeof(struct ListNode));
    head->next->val = 1;
    head->next->next = malloc(sizeof(struct ListNode));
    head->next->next->val = 2;
    head->next->next->next = NULL;
    insertionSortList(head);
    return 0;
}
