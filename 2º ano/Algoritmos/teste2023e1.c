#include <stdio.h>
#include <stdlib.h>


typedef struct avlnode
{
    int value;
    int balance;
    struct avlnode *left, *right;
} *AVLTree;
AVLTree newNode(int value)
{
    AVLTree node = (AVLTree)malloc(sizeof(AVLTree));
    if (node != NULL)
    {
        node->value = value;
        node->balance = 0;
        node->left = NULL;
        node->right = NULL;
    }
    return node;
}

AVLTree build(int a[], int N)
{
    if (N / 2 == 0)
        return NULL;
    int mid = N / 2;
    AVLTree tree = newNode(a[mid]);
    tree->left = build(a, mid),
    tree->right = build(a + mid, N - mid);

    if (tree->left == NULL && tree->right != NULL)
        tree->balance = -1;
    if (tree->left != NULL && tree->right == NULL)
        tree->balance = 1;
    return tree;
}

void printTree(AVLTree tree)
{
    if (tree != NULL)
    {
        printTree(tree->left);
        printf("%d ", tree->value);
        printTree(tree->right);
    }
}

int main()
{
    int val[9] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    AVLTree tree = build(val, 9);

    // Imprimir a árvore em ordem
    printf("Árvore AVL em ordem: ");
    printTree(tree);
    printf("\n");

    // Restante do código...

    return 0;
}